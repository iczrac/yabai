#!/usr/bin/env sh
# Sync the human-edited yabairc (source of truth, git-tracked) into ~/.yabairc,
# the file yabai's launchd service actually loads at startup.
#
# Why this script exists, instead of a symlink:
#   - yabai looks for ~/.yabairc before any XDG path, so that file — not
#     yabai/yabairc in this repo — is what actually takes effect.
#   - yabai-dockstack.app also owns a marker-delimited block at the tail of
#     ~/.yabairc (its own auto-managed signals/rules) and rewrites that file
#     with an atomic write (write-temp + rename). Rename-over-a-symlink
#     replaces the symlink itself with a plain file, so a plain `ln -s` gets
#     silently destroyed the next time the app writes its block.
#   - Instead, this script regenerates ~/.yabairc each time: repo content +
#     the dockstack managed block preserved verbatim (if one exists), so the
#     app's own marker-based idempotent replace keeps working normally.
#
# Run this after editing yabai/yabairc. Then restart the yabai service for
# the new rules to take effect:
#   yabai --restart-service

set -eu

SRC="$HOME/.config/yabai/yabai/yabairc"
DEST="$HOME/.yabairc"
BEGIN_MARKER="# >>> yabai-dockstack:managed BEGIN"
END_MARKER="# <<< yabai-dockstack:managed END"

if [ ! -f "$SRC" ]; then
    echo "sync-yabairc: source not found: $SRC" >&2
    exit 1
fi

managed_block=""
if [ -f "$DEST" ]; then
    managed_block=$(awk -v b="$BEGIN_MARKER" -v e="$END_MARKER" '
        index($0, b) == 1 { inblock=1 }
        inblock { print }
        index($0, e) == 1 { inblock=0 }
    ' "$DEST")
fi

tmp=$(mktemp "${DEST}.XXXXXX")
cp "$SRC" "$tmp"
if [ -n "$managed_block" ]; then
    printf '\n%s\n' "$managed_block" >> "$tmp"
fi

if [ -f "$DEST" ]; then
    cp "$DEST" "${DEST}.bak"
fi
mv "$tmp" "$DEST"
chmod 755 "$DEST"

lines=$(wc -l < "$DEST" | tr -d ' ')
echo "sync-yabairc: wrote $lines lines to $DEST"
if [ -n "$managed_block" ]; then
    block_lines=$(printf '%s\n' "$managed_block" | wc -l | tr -d ' ')
    echo "sync-yabairc: preserved yabai-dockstack managed block ($block_lines lines)"
else
    echo "sync-yabairc: no yabai-dockstack managed block found in previous $DEST"
fi
echo "sync-yabairc: previous $DEST backed up to ${DEST}.bak"
echo "sync-yabairc: run 'yabai --restart-service' to apply"
