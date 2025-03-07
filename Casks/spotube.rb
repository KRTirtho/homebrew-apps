cask "spotube" do
  version "4.0.0"
  sha256 "89e951747f83d5076b287e0ec5015dc3aae9cd4441b3f7517ffb329d2fd5add9"

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
    "~/Library/Application Support/oss.krtirtho.spotube",
  ]

  depends_on formula: "yt-dlp", optional: true
end
