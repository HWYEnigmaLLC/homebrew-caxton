cask "caxton" do
  version "1.7.3"
  sha256 "766ddffc5f2d008b323798081f8e40a0d0461230de24ce6a3e4555cd56061c64"

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
