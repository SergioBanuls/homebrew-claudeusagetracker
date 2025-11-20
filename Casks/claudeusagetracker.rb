cask "claudeusagetracker" do
  version "999.0.0"  # Versión muy alta para forzar "actualización"
  sha256 :no_check   # No verificar SHA256
  
  url "https://github.com/SergioBanuls/homebrew-claudeusagetracker/raw/main/deprecated.txt"
  name "Claude Usage Tracker"
  desc "⚠️ DEPRECATED: This tap has moved to masmovil/claudeusagetracker"
  homepage "https://github.com/masmovil/ClaudeUsageTracker"

  deprecate! date: "2025-11-20", because: "This tap has moved to masmovil/claudeusagetracker"

  caveats do
    <<~EOS
      ⚠️  IMPORTANT: This tap has been DEPRECATED and moved.
      
      Please uninstall this version and use the new tap:
      
        brew uninstall --cask claudeusagetracker
        brew untap SergioBanuls/claudeusagetracker
        brew tap masmovil/claudeusagetracker
        brew install --cask masmovil/claudeusagetracker/claudeusagetracker
      
      New repository: https://github.com/masmovil/homebrew-claudeusagetracker
    EOS
  end
end
