cask "spotube" do
  version "5.1.0"
  sha256 "3aa165caff6c47bc86e46aa46637c56f4c4ccc379134dcc93816a9ecf6b67adc"

  url "https://github.com/KRTirtho/spotube/releases/download/v#{version}/Spotube-macos-universal.dmg",
      verified: "github.com/KRTirtho/spotube/"
  name "Spotube"
  desc "A cross-platform extensible open-source music streaming platform"
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

  depends_on formula: "yt-dlp"
end
