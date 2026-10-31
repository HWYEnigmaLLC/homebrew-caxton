cask "caxton" do
  version "2.2.1"
  sha256 "09795807eea8a4e53dc0a8e0db9c8907409e71cc3489b853847e9ca6b366973c"

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
