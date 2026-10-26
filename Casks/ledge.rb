cask "ledge" do
  # Always the newest GitHub release, so publishing a release is the only step. Ledge updates itself.
  version :latest
  sha256 :no_check

  url "https://github.com/notsocj/ledge/releases/latest/download/Ledge.dmg"
  name "Ledge"
  desc "Puts the MacBook notch to work"
  homepage "https://github.com/notsocj/ledge"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ledge.app"

  zap trash: [
    "~/Library/Application Support/Ledge",
    "~/Library/Preferences/com.ledge.Ledge.plist",
  ]
end
