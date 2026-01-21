cask "macpaper" do
  version "2.2.0"
  sha256 "e081363d89ce1e8dd881bfc2dbaea447d0715108f8cfd1bc635076e6713f26a0"

  url "https://github.com/naomisphere/macpaper/releases/download/v#{version}/macpaper.dmg"
  name "macpaper"
  desc "✨ The Wallpaper Manager for macOS"
  homepage "https://github.com/naomisphere/macpaper"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "macpaper.app"
  auto_updates true
  depends_on macos: ">= :monterey"

  zap trash: [
    "~/Library/Application Support/macpaper/",
    "~/.local/share/macpaper/",
    "~/.local/share/paper/",
  ]
end
