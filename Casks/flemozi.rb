cask "flemozi" do
  version "0.2.0"
  sha256 "f7bb05950341324f6d4410c2b4b9f83c1687c35df4a86231184aca9332e2a554"

  url "https://github.com/KRTirtho/flemozi/releases/download/v#{version}/Flemozi-macos-universal.dmg",
      verified: "github.com/KRTirtho/flemozi/"
  name "Spotube"
  desc "Advanced⚡ Emoji Picker😀 for Linux🐧, Windows🪟 and macOS🍎"
  homepage "https://github.com/KRTirtho/flemozi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "flemozi.app"

  zap trash: [
    "~/Library/Application Scripts/dev.krtirtho.flemozi",
    "~/Library/Containers/dev.krtirtho.flemozi",
  ]
end
