cask "spotube" do
  version "3.7.0"
  sha256 "ca79a28181d3216d7d0e3c4a349898e9d9fa7866f21faf59e00c46fbd676bce1"

  url "https://github.com/KRTirtho/spotube/releases/download/v#{version}/Spotube-macos-universal.dmg",
      verified: "github.com/KRTirtho/spotube/"
  name "Spotube"
  desc "🎧 Open source Spotify client that doesn't require Premium nor uses Electron! Available for both desktop & mobile!"
  homepage "https://spotube.krtirtho.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "spotube.app"

  zap trash: [
    "~/Library/Application Scripts/oss.krtirtho.spotube",
    "~/Library/Containers/oss.krtirtho.spotube",
  ]
end
