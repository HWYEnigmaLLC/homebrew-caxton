cask "caxton" do
  version "1.7.2"
  sha256 "e597f43388e45975ed59ff323ef9fb4283cc659b37c2f9efa42dec30b42ba1cb"

  url "https://caxton.app/downloads/Caxton-#{version}.dmg"
  name "Caxton"
  desc "Text and CSV editor for multi-gigabyte files"
  homepage "https://caxton.app/"

  livecheck do
    url "https://caxton.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Caxton.app"

  zap trash: [
    "~/Library/Application Support/Caxton",
    "~/Library/Caches/com.hwyenigma.Caxton",
    "~/Library/HTTPStorages/com.hwyenigma.Caxton",
    "~/Library/Preferences/com.hwyenigma.Caxton.plist",
    "~/Library/Saved Application State/com.hwyenigma.Caxton.savedState",
  ]
end
