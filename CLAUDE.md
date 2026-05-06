# xmobar — assistant notes

## Keep `xmobarrc` and `xmobarrc.base` in sync

Both files contain the same config, just at different theme states (live vs. base).
When changing widget definitions, the `commands` list, or the `template`,
**apply the edit to both files**. The only intentional drift between them
is theme-derived state (`bgColor`, `fgColor`, `borderColor`) which
`theme-sync.sh` rewrites in `xmobarrc` on Emacs theme toggle.
