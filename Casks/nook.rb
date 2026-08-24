cask "nook" do
  version "0.1.59"
  sha256 "083d1e6ff28c0ff83b7f0e965de619fe114746bf03b47669e2e28d4ebac4f5b4"

  url "https://github.com/nooker-app/nook/releases/download/v#{version}/Nook-#{version}.dmg"
  name "Nook"
  desc "Native RSS reader that keeps your feeds in a plain folder"
  homepage "https://www.nooker.app/download/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Nook.app"

  zap trash: [
    "~/Library/Application Support/Nook",
    "~/Library/Caches/com.tim.nook",
    "~/Library/HTTPStorages/com.tim.nook",
    "~/Library/Preferences/com.tim.nook.plist",
    "~/Library/Saved Application State/com.tim.nook.savedState",
  ]
end
