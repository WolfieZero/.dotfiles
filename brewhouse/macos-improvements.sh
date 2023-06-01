#!/usr/bin/env sh

# taken from https://github.com/mathiasbynens/dotfiles/blob/main/.macos

source ~/.dotfiles/brewhouse/_config.sh

# Ask for password
sudo -v

# ------------------------------------------------------------------------------
# General UI/UX
# ------------------------------------------------------------------------------

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Check for software updates daily, not just once per week
# defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Disable Notification Center and remove the menu bar icon
#launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# Disable automatic capitalization as it's annoying when typing code
#defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they're annoying when typing code
#defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it's annoying when typing code
#defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they're annoying when typing code
#defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
#defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Enable subpixel font rendering on non-Apple LCDs
#defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Set a shorter Delay until key repeat
#defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Disable the sound effects on boot
#sudo nvram SystemAudioVolume=" "

# Disable transparency in the menu bar and elsewhere on Yosemite
#defaults write com.apple.universalaccess reduceTransparency -bool true

# Set highlight color to green
#defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"

# Set sidebar icon size to medium
#defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Always show scrollbars
# Possible values: `WhenScrolling`, `Automatic` and `Always`
#defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Disable the over-the-top focus ring animation
#defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false

# Adjust toolbar title rollover delay
#defaults write NSGlobalDomain NSToolbarTitleViewRolloverDelay -float 0

# Increase window resize speed for Cocoa applications
#defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Disable the "Are you sure you want to open this application?" dialog
#defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Disable automatic termination of inactive apps
#defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Disable the crash reporter
#defaults write com.apple.CrashReporter DialogType -string "none"

# Set Help Viewer windows to non-floating mode
#defaults write com.apple.helpviewer DevMode -bool true

# ------------------------------------------------------------------------------
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
# ------------------------------------------------------------------------------

# Trackpad: enable tap to click for this user and for the login screen
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
#defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
#defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: map bottom right corner to right-click
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
#defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
#defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Disable "natural" (Lion-style) scrolling
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Use scroll gesture with the Ctrl (^) modifier key to zoom
#defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
#defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Follow the keyboard focus while zoomed in
#defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Set language and text formats
# Note: if you're in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
#defaults write NSGlobalDomain AppleLanguages -array "en" "nl"
#defaults write NSGlobalDomain AppleLocale -string "en_GB@currency=EUR"
#defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
#defaults write NSGlobalDomain AppleMetricUnits -bool true

# Show language menu in the top right corner of the boot screen
#sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
#sudo systemsetup -settimezone "Europe/Brussels" > /dev/null

# Stop iTunes from responding to the keyboard media keys
# launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# ------------------------------------------------------------------------------
# Energy saving
# ------------------------------------------------------------------------------

# Enable lid wakeup
#sudo pmset -a lidwake 1

# Restart automatically on power loss
#sudo pmset -a autorestart 1

# Restart automatically if the computer freezes
#sudo systemsetup -setrestartfreeze on

# Sleep the display after 15 minutes
#sudo pmset -a displaysleep 15

# Disable machine sleep while charging
#sudo pmset -c sleep 0

# Set machine sleep to 5 minutes on battery
#sudo pmset -b sleep 5

# Set standby delay to 24 hours (default is 1 hour)
#sudo pmset -a standbydelay 86400

# Never go into computer sleep mode
#sudo systemsetup -setcomputersleep Off > /dev/null

# Hibernation mode
# 0: Disable hibernation (speeds up entering sleep mode)
# 3: Copy RAM to disk so the system state can still be restored in case of a
#    power failure.
#sudo pmset -a hibernatemode 0

# Remove the sleep image file to save disk space
#sudo rm /private/var/vm/sleepimage
# Create a zero-byte file instead…
#sudo touch /private/var/vm/sleepimage
# …and make sure it can't be rewritten
#sudo chflags uchg /private/var/vm/sleepimage

# ------------------------------------------------------------------------------
# Screen
# ------------------------------------------------------------------------------

# Require password immediately after sleep or screen saver begins
#defaults write com.apple.screensaver askForPassword -int 1
#defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
#defaults write com.apple.screencapture disable-shadow -bool true

# Enable subpixel font rendering on non-Apple LCDs
# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
#defaults write NSGlobalDomain AppleFontSmoothing -int 1

# Enable HiDPI display modes (requires restart)
#sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# ------------------------------------------------------------------------------
# Finder
# ------------------------------------------------------------------------------

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
#defaults write com.apple.finder QuitMenuItem -bool true

# Finder: disable window animations and Get Info animations
#defaults write com.apple.finder DisableAllAnimations -bool true

# Set Home as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
#defaults write com.apple.finder NewWindowTarget -string "PfDe"
#defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
#defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Use List view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`, "Nlsv"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool false

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# ------------------------------------------------------------------------------
# Safari
# ------------------------------------------------------------------------------

# Enable Safari's debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
# Remove useless icons from Safari's bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"


# Disable AutoFill
#defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
#defaults write com.apple.Safari AutoFillCreditCardData -bool false
#defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# Warn about fraudulent websites
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

# Enable "Do Not Track"
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# Update extensions automatically
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

# Disable auto-playing video
defaults write com.apple.Safari WebKitMediaPlaybackAllowsInline -bool false
defaults write com.apple.SafariTechnologyPreview WebKitMediaPlaybackAllowsInline -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2AllowsInlineMediaPlayback -bool false
defaults write com.apple.SafariTechnologyPreview com.apple.Safari.ContentPageGroupIdentifier.WebKit2AllowsInlineMediaPlayback -bool false

# ------------------------------------------------------------------------------
# Mail
# ------------------------------------------------------------------------------

# Disable send and reply animations in Mail.app
#defaults write com.apple.mail DisableReplyAnimations -bool true
#defaults write com.apple.mail DisableSendAnimations -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
#defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
#defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\U21a9"

# Display emails in threaded mode, sorted by date (oldest at the top)
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Disable automatic spell checking
#defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

# ------------------------------------------------------------------------------
# Dock
# ------------------------------------------------------------------------------

# Enable highlight hover effect for the grid view of a stack (Dock)
#defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Change minimize/maximize window effect
#defaults write com.apple.dock mineffect -string "scale"

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don't use
# the Dock to launch apps.
#defaults write com.apple.dock persistent-apps -array

# Show only open applications in the Dock
#defaults write com.apple.dock static-only -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Don't show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Add iOS & Watch Simulator to Launchpad
sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app" "/Applications/Simulator.app"
sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator (Watch).app" "/Applications/Simulator (Watch).app"

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen

# Top left screen corner
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom left screen corner
defaults write com.apple.dock wvous-bl-corner -int 10
defaults write com.apple.dock wvous-bl-modifier -int 0

# ------------------------------------------------------------------------------
# Restart
# ------------------------------------------------------------------------------

for app in Safari Finder Dock SystemUIServer; do killall "$app" >/dev/null 2>&1; done
