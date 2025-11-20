cask "claudeusagetracker" do
  version "1.2.0"
  sha256 "9b5d2592770f906cc7992edae594ca310303dd668af12e1b5d12956c6c59201c"

  url "https://github.com/masmovil/ClaudeUsageTracker/releases/download/v#{version}/ClaudeUsageTracker-v#{version}.dmg"
  name "Claude Usage Tracker"
  desc "⚠️ DEPRECATED: This tap has moved to masmovil/claudeusagetracker"
  homepage "https://github.com/masmovil/ClaudeUsageTracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClaudeUsageTracker.app"

  caveats <<~EOS
    ⚠️  IMPORTANT: This tap has been moved.
    
    Please uninstall this version and use the new tap:
    
      brew uninstall --cask claudeusagetracker
      brew untap SergioBanuls/claudeusagetracker
      brew tap masmovil/claudeusagetracker
      brew install --cask masmovil/claudeusagetracker/claudeusagetracker
    
    New repository: https://github.com/masmovil/homebrew-claudeusagetracker
  EOS

  zap trash: [
    "~/Library/Preferences/com.claudeusage.tracker.plist",
  ]
end
