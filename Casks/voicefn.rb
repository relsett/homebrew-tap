cask "voicefn" do
  version "1.0.0"
  sha256 "0be231e92871829809f11e311aac55a305dd362bb269878c234df0a8ad6fd2c9"

  url "https://github.com/relsett/voicefn/releases/download/v#{version}/VoiceFn-#{version}.dmg"
  name "VoiceFn"
  desc "Dictation into any app with on-device Whisper"
  homepage "https://relsett.github.io/voicefn/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "VoiceFn.app"

  zap trash: "~/Library/Containers/com.relsett.voicemacro"
end
