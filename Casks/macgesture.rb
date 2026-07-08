cask "macgesture" do
  version "3.2.0-selfheal.1"
  sha256 "38370bc11204400ab11a9ed7fe3c4d87599e60306542641257481d25b268d76f"

  url "https://github.com/ktrysmt/MacGesture/releases/download/v#{version}/MacGesture-#{version}.zip"
  name "MacGesture (self-heal fork)"
  desc "Mouse gestures for macOS, fork with event-tap self-heal watchdog"
  homepage "https://github.com/ktrysmt/MacGesture"

  auto_updates false

  app "MacGesture.app"

  uninstall quit: "com.codefalling.MacGesture"

  zap trash: [
    "~/Library/Preferences/com.codefalling.MacGesture.plist",
  ]

  caveats <<~EOS
    This is an unofficial, ad-hoc signed (NOT notarized) build of MacGesture.

    On first launch macOS will block it. Approve it once via:
      System Settings > Privacy & Security > (scroll to the bottom) > Open Anyway

    MacGesture needs Accessibility permission to read mouse events:
      System Settings > Privacy & Security > Accessibility > enable MacGesture

    It shares a bundle id with the official `macgesture` cask, so uninstall
    that first if it is present:
      brew uninstall --cask macgesture
  EOS
end
