cask "voicefn" do
  version "1.0.1"
  sha256 "cc4db25a588d050cc21c3df7a25b85018d90e481220a33302fa45ec320eff64f"

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
