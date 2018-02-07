# #!/bin/bash
timesDir=/Users/Home/Google\ Drive/Work/GW/Times


startDate=$(date)
endDate=$(date -j -v+4d)
weekDayNum=$(date +'%u') # 1 is Monday
month=$(date +'%m')
year=$(date +'%Y')

# If today is NOT Monday
if [ $weekDayNum -gt 1 ];
then
	# Get the date for the last Monday
	startDate=$(date -j -v-$(($weekDayNum-1))d)
	endDate=$(date -j -v+$((5-$weekDayNum))d)
fi

weekStartMonth=$(date -j  -f "%a %b %d %T %Z %Y"  "$startDate" +'%m')
weekStartDay=$(date -j  -f "%a %b %d %T %Z %Y"  "$startDate" +'%d')
weekEndMonth=$(date -j  -f "%a %b %d %T %Z %Y"  "$endDate" +'%m')
weekEndDay=$(date -j  -f "%a %b %d %T %Z %Y"  "$endDate" +'%d')

# Check if Year Directory Exists
[ -d "$timesDir/$year" ] || mkdir "$timesDir/$year"

# Check if Month Directory Exists
[ -d "$timesDir/$year/$month" ] || mkdir "$timesDir/$year/$month"

filePath="$timesDir/$year/$month/$weekStartMonth.$weekStartDay-$weekEndMonth.$weekEndDay.rtf"

# Create file if it doesn't exist
if [ ! -f "$filePath" ]; then

    cp "$timesDir/template.rtf" "$filePath"

    # Replace Date Placeholder in new file
    for i in 0 1 2 3 4
    do
    	declare -i stringReplace=$i+1

		newDate=$(date -j -f "%a %b %d %T %Z %Y" -v +"$i"d "$startDate")
		newDateMonth=$(date -j  -f "%a %b %d %T %Z %Y"  "$newDate" +'%B')
		newDateDay=$(date -j  -f "%a %b %d %T %Z %Y"  "$newDate" +'%d')

    	sed -i '' "s/\[DATE$stringReplace\]/$newDateMonth $newDateDay/" "$filePath"
    done
fi

open "$filePath"