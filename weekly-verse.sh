#!/bin/bash

# List of verses (I need to finish add some)
verses=(
	"I write these things to you who believe in the name of the Son of God so that you may know that you have eternal life. 1 John 5:13",
	"For it is by grace you have been saved, through faith—and this not from yourselves, it is the gift of God—not by works, so that no one can boast. Ephesians 2:8 and 9",
	"Therefore, if anyone is in Christ he is a new creation; the old has gone, the new has come! 2nd Corinthians 5:17",
	"For I am convinced that neither death nor life, neither angels nor demons, neither the present nor the future, nor any powers, neither height nor depth, nor anything else in all creation, will be able to separate us from the love of God that is in Christ Jesus our Lord. Romans 8:38 and 39",
	"Delight yourself in the Lord and he will give you the desires of your heart. Commit your way to the Lord, trust in him and he will do this. Psalm 37:4 and 5",
	"Trust in the Lord with all your heart and lean not on your own understanding; in all your ways acknowledge him, and he will make your paths straight. Proverbs 3:5 and 6",
	"Whatever you do, work at it with all your heart, as working for the Lord, not for men. Colossians 3:23",
	"Submit yourselves, then, to God. Resist the devil, and he will flee from you. James 4:7",
	"All Scripture is God-breathed and is useful for teaching, rebuking, correcting, and training in righteousness. 2nd Timothy 3:16",
	"8",
	"9",
	"10",
	"11",
	"12",
	"13",
	"14",
	"15",
	"16",
	"17",
	"18",
	"19",
	"20",
	"21",
	"22",
	"23",
	"24",
	"25",
	"26",
	"27",
	"28",
	"29",
	"30",
	"31",
	"32",
	"33",
	"34",
	"35",
	"36",
	"37",
	"38",
	"39",
	"40",
	"41",
	"42",
	"43",
	"44",
	"45",
	"46",
	"47",
	"48",
	"49",
	"50",
	"51"
)

# Get the current week of the year (e.g. 0 - 51)
weekNum=$(date +'%V')

# Just check to make sure there is a verse for the current week
if [ $weekNum -lt ${#verses[@]} ]
then
	# Read out verse that corresponds to current week
	say ${verses[$weekNum]}
fi