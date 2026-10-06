cask "caxton" do
  version "2.0.1"
  sha256 "6fe2d52e4a623c3012531288fd0110918718e5beb00eb144c4ae59234a7fb8f9"

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
