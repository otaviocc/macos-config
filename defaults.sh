#!/usr/bin/env bash

# Dock ########################################################################

echo "Dock"

# Set dock to the bottom of the screen (also valid: right, left)
defaults write com.apple.dock orientation -string bottom

# Set the dock size
defaults write com.apple.dock tilesize -int 64

# Disable auto hide
defaults write com.apple.dock autohide -bool false

# Set auto hide animation time (default: 0.5)
defaults write com.apple.dock autohide-time-modifier -float 0.12

# Set auto hide delay (default: 0.5)
defaults write com.apple.dock autohide-delay -float 0

# Hide recent apps
defaults write com.apple.dock show-recents -bool false

# Minimize animation effect
defaults write com.apple.dock mineffect -string genie

# Don't reorder spaces by last used
defaults write com.apple.dock mru-spaces -bool false

# Don't group windows by application in Mission Control (use old Expose behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false

# Don't resize Dock
defaults write com.apple.dock size-immutable -bool true

# Screen capture ###############################################################

echo "Screen capture"

# Create directory for screenshots
mkdir -p ~/Pictures/Screenshots/macOS

# Disable shadow
defaults write com.apple.screencapture disable-shadow -bool false

# Include date on file name
defaults write com.apple.screencapture include-date -bool true

# Save screenshots in the correct directory
defaults write com.apple.screencapture location -string ~/Pictures/Screenshots/macOS

# Show thumbnail after taking a screenshot
defaults write com.apple.screencapture show-thumbnail -bool true

# Save screenshots as png (also valid: jpg)
defaults write com.apple.screencapture type -string png

# Global ######################################################################

echo "Global"

# Show extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Save to disk or iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Set sidebar icon size
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Enable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true

# Set language and text formats
defaults write NSGlobalDomain AppleLanguages -array "en_US" "en"
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=EUR"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set dark mode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Scrollbar
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Finder ######################################################################

echo "Finder"

# Quit
defaults write com.apple.finder QuitMenuItem -bool false

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool false

# Changing file extension warning
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Organize files by name (also valid: grid)
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist

# Grid spacing for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 70" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 70" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 70" ~/Library/Preferences/com.apple.finder.plist

# Size of icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist

# Font size
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:textSize 12" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:textSize 12" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:textSize 12" ~/Library/Preferences/com.apple.finder.plist

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Menu bar ####################################################################

echo "Menu bar"

# Flash clock time separators
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false

# Set menu bar digital clock format
defaults write com.apple.menuextra.clock DateFormat -string "d MMM HH:mm"

# Simulator ###################################################################

echo "iOS Simulator"

mkdir -p ~/Pictures/Screenshots/Simulator

# Set screenshot location
defaults write com.apple.iphonesimulator ScreenShotSaveLocation -string ~/Pictures/Screenshots/Simulator

# TextEdit ####################################################################

echo "TextEdit"

# Set default document format
defaults write com.apple.TextEdit RichText -bool false

# Printer #####################################################################

echo "Printer"

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Bluetooth ###################################################################

echo "Bluetooth"

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Screensaver #################################################################

echo "Screensaver"

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Desktop Services ############################################################

echo "Desktop Services"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Restart Services ############################################################

echo "Restart Services..."

for app in "Dock" "Finder" "TextEdit" "SystemUIServer"
do
    killall "${app}"
done

echo "Done!"