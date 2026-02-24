cask "spotube" do
  version "5.1.1"
  sha256 "91441d2d66b0b48561cde3b935f51ae37e4939feff48254185229f421dc9f7a2"

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
