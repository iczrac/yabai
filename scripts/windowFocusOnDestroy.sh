#!/bin/bash
# window_destroyed signal: when the closed window leaves nothing focused,
# focus the first visible window so the desktop never ends up focus-less.
#
# Guards (2026-07: rewritten for yabai v7 field names — the old .visible/.focused
# keys were removed, which had turned this script into an error-spamming no-op):
# 1. settle first — macOS usually hands focus off by itself
# 2. only act when nothing is focused
# 3. never act while Dock owns the stage (Launchpad / Mission Control
#    transitions): a focus command mid-animation can wedge Dock's gestures

sleep 0.4

yabai -m query --windows --window >/dev/null 2>&1 && exit 0

front=$(lsappinfo info -only name "$(lsappinfo front)" 2>/dev/null)
[[ "$front" == *'"Dock"'* ]] && exit 0

target=$(yabai -m query --windows 2>/dev/null | jq -re '
  [.[] | select(.["is-visible"] and (.["has-focus"] | not)
                and (.["is-minimized"] | not)
                and .subrole == "AXStandardWindow")][0].id') || exit 0
exec yabai -m window --focus "$target" >/dev/null 2>&1
