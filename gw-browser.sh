#!/bin/bash

# Chrome Profile to Use
chromeProfile="Profile 6"

# List of websites to open
browserTabs=(
	"https://www.gmail.com"
	"https://calendar.google.com"
)

# Open Browser
open -n -a /Applications/Google\ Chrome.app --args --profile-directory="${chromeProfile}" --new-window --start-fullscreen --start-maximized --enable-fullscreen-app-list

# Loop through array of urls to open
for i in "${browserTabs[@]}"
do
   : 
   open -n -a /Applications/Google\ Chrome.app --args $i
done

# Wait for a moment
/bin/sleep 1

# Make Browser Full Screen
/usr/bin/osascript -e "tell application \"Google Chrome\""  -e "activate" -e "tell application \"System Events\"" -e "keystroke \"f\" using {control down, command down}" -e "end tell" -e "end tell"