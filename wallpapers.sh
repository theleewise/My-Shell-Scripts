#!/bin/bash
wallpaperdir='/Users/Home/Wallpapers'

# If user provided file number
if [ ! -z $1 ];
then
	file=${wallpaperdir}'/'${1}'.jpg'

# If no file provided, pick a random one
else

	# File Count
	count=$(find ${wallpaperdir} -type f | wc -l)

	# Get random number up to the number of files in directory 
	rand=$(( RANDOM % (${count} ) + 1  ))
	file=${wallpaperdir}'/'${rand}'.jpg'
fi

# Change all desktops to new wallpaper
osascript -e 'tell application "System Events"
    tell every desktop
        set picture to "'$file'"
    end tell
end tell'