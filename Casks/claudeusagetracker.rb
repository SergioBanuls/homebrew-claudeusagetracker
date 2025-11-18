cask "claudeusagetracker" do
  version "1.1.0"
  sha256 "76d43ca6e8d46b5dadc04c336b42a6be42372e64e979e493103af0bdfedb21a5"

  url "https://github.com/SergioBanuls/ClaudeUsageTracker/releases/download/v#{version}/ClaudeUsageTracker-v#{version}.dmg"
  name "Claude Usage Tracker"
  desc "Track your Claude Code API usage from your macOS menu bar"
  homepage "https://github.com/SergioBanuls/ClaudeUsageTracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClaudeUsageTracker.app"

  zap trash: [
    "~/Library/Preferences/com.claudeusage.tracker.plist",
  ]
end
