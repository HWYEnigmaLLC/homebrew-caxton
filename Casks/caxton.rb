cask "caxton" do
  version "2.1.0"
  sha256 "362d229e4face7a57997f399066f5d36c3c5061d4ff13c644602669014f34240"

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
  # The caxton command the app bundles (Caxton ▸ Install Command Line
  # Tool… does the same for a drag-installed copy).
  binary "#{appdir}/Caxton.app/Contents/Helpers/caxton"

  zap trash: [
    "~/Library/Application Support/Caxton",
    "~/Library/Caches/com.hwyenigma.Caxton",
    "~/Library/HTTPStorages/com.hwyenigma.Caxton",
    "~/Library/Preferences/com.hwyenigma.Caxton.plist",
    "~/Library/Saved Application State/com.hwyenigma.Caxton.savedState",
  ]
end
