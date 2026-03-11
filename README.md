# xmobar config

Personal [xmobar](https://codeberg.org/xmobar/xmobar) configuration with a Tokyo Night color scheme.

## Bar layout

```
[StdinReader] }{ [kbd] [brightness] [volume] [wifi] [cpu temp] [memory] [disk] [battery] [date]
```

## Monitors

| Monitor | Description | Update interval |
|---------|-------------|-----------------|
| StdinReader | Workspace/window info from xmonad | — |
| Kbd | Keyboard layout (US/RU) | — |
| Brightness | Screen brightness % (amdgpu) | 1s |
| Alsa | Master volume with mute indicator | — |
| Wireless | Wi-Fi ESSID (wlan0) | 3s |
| Cpu | CPU usage % | 1s |
| CPU Temp | CPU temperature (hwmon7) | 1s |
| Memory | RAM usage % | 1s |
| DiskU | Free space on `/` | 6s |
| BatteryP | Battery % with charge status (BAT1) | 3s |
| Date | Date and time | 1s |

## Appearance

- **Font:** JetBrains Mono 10 / JetBrainsMono Nerd Font 12 (icons)
- **Position:** Top, 32px height
- **Colors:** Tokyo Night (`#1a1b26` bg, `#c0caf5` fg)

## Installation

```sh
ln -sf ~/.config/xmobar/xmobarrc ~/.xmobarrc
```

Or point your xmonad config to `~/.config/xmobar/xmobarrc` directly.
