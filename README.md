# Yabai and Skhd Config

This repository contains my standalone Yabai and Skhd configurations.

As tiling windows management, every times window created, it will allocate a space for it to avoid window overlap to each other.

## Installation

```shell
# Remove previous links
$ rm -f "${HOME}"/.{yabai,skhd}rc

# Install configs
$ git clone https://github.com/z20240/yabai.git "${HOME}"/.config/yabai
$ ln -s "${HOME}/.config/yabai/yabai/yabairc" "${HOME}/.yabairc"
$ ln -s "${HOME}/.config/yabai/skhd/skhdrc" "${HOME}/.skhdrc"
```
## Keyboard Shortcuts
### Reload / restart the yabai launch agent

<kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>r</kbd>

### show/hide items on desktop

<kbd>cmd</kbd> + <kbd>f3</kbd>

### Toggle full screen / up-full screen

<kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>space</kbd>

### Move Windows
|    Action   |                   Key Combination                   |
|-------------|-----------------------------------------------------|
| Move left   | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>left</kbd>   |
| Move right  | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>right</kbd>  |
| Move up     | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>up</kbd>     |
| Move down   | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>down</kbd>   |

### Focus Windows
|    Action   |                            Key Combination                            |
|-------------|-----------------------------------------------------------------------|
| Focus left  | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>left</kbd>   |
| Focus right | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>right</kbd>  |
| Focus up    | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>up</kbd>     |
| Focus down  | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>down</kbd>   |

### Resize Windows
|    Action    |                            Key Combination                              |
|--------------|-------------------------------------------------------------------------|
| Resize left  | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>home</kbd>     |
| Resize right | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>end</kbd>      |
| Resize up    | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>pageUp</kbd>   |
| Resize down  | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>pageDown</kbd> |

### Stack Windows
|    Action    |                            Key Combination                            |
|--------------|-----------------------------------------------------------------------|
| Stack left   | <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>left</kbd>  |
| Stack right  | <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>right</kbd> |

### Focus Windows (stack mode)
|    Action   |                            Key Combination                           |
|-------------|----------------------------------------------------------------------|
| Focus up    | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>up</kbd>    |
| Focus down  | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>down</kbd>  |

### Toggle float / Un-float mode window

<kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>space</kbd>

### Move Windows (floating mode)

|            Action             |                     Key Combination                   |
|-------------------------------|-------------------------------------------------------|
| Move left                     | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>left</kbd>     |
| Move right                    | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>right</kbd>    |
| full screen                   | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>up</kbd>       |
| place window to screen center | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>down</kbd>     |
| Move up left                  | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>home</kbd>     |
| Move down right               | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>end</kbd>      |
| Move up right                 | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>pageUp</kbd>   |
| Move down left                | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>pageDown</kbd> |


### Send Window to Spaces
|       Action        |                      Key Combination                    |
|---------------------|---------------------------------------------------------|
| Send to prev space  | <kbd>ctrl</kbd> + <kbd>cmd</kbd> + <kbd>left</kbd>      |
| Send to next space  | <kbd>ctrl</kbd> + <kbd>cmd</kbd> + <kbd>right</kbd>     |
| Send to space (1-9) | <kbd>ctrl</kbd> + <kbd>cmd</kbd> + <kbd>1 - 9</kbd>     |

### Send Window to Monitors (Displays)
|         Action       |                      Key Combination                    |
|----------------------|---------------------------------------------------------|
| Send to prev monitor | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>left</kbd>      |
| Send to next monitor | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>right</kbd>     |

### Focus Monitors (Displays)
|         Action       |                Key Combination                  |
|----------------------|-------------------------------------------------|
| Focus monitor 1      | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>1</kbd> |
| Focus monitor 2      | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>2</kbd> |
| Focus monitor 3      | <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>3</kbd> |

### Misc
|         Action              |                            Key Combination                         |
|-----------------------------|--------------------------------------------------------------------|
| Window rotate clockwise     | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>r</kbd>                     |
| Window rotate anticlockwise | <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>r</kbd>  |
| Window Equalize size        | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>\|</kbd>                    |
| Enable / Disable gaps       | <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>g</kbd>                     |
