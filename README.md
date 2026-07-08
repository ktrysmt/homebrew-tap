# homebrew-tap

Homebrew tap for ktrysmt's macOS apps.

## Casks

### macgesture

Unofficial fork of [MacGesture](https://github.com/MacGesture/MacGesture) 3.2.0
with a fix for the event tap being silently disabled by the system (which makes
gestures randomly stop working until the app is relaunched). Source and details:
<https://github.com/ktrysmt/MacGesture/tree/fix/eventtap-selfheal>

```sh
# the official cask shares a bundle id, remove it first if installed
brew uninstall --cask macgesture

brew install --cask ktrysmt/tap/macgesture
```

The build is ad-hoc signed and NOT notarized, so on first launch approve it via
System Settings > Privacy & Security > Open Anyway, then grant Accessibility
under System Settings > Privacy & Security > Accessibility.

License: GPL-3.0 (inherited from upstream MacGesture).
