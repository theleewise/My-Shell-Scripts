#!/bin/bash
apps=(
	"Slack"
	"Spotify"
	"Trello"
)

# Loop through array of apps to open
for i in "${apps[@]}"
do
   : 
   open -a $i
done