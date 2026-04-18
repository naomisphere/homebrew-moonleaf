cask "moonleaf" do
  version "3.0.0"
  sha256 "6c296066b5ed8d19a72e0a6095b2b8d9af4d2b173090676a2da6b2848b6480d0"

  url "https://github.com/naomisphere/moonleaf/releases/download/v#{version}/moonleaf.dmg"
  name "moonleaf"
  desc "✨ The Wallpaper Manager for macOS"
  homepage "https://github.com/naomisphere/moonleaf"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "moonleaf.app"
  auto_updates true
  depends_on macos: ">= :monterey"

  zap trash: [
    "~/Library/Application Support/moonleaf/",
    "~/.local/share/macpaper/",
    "~/.local/share/paper/",
    "~/.config/moonleaf/",
  ]
end
