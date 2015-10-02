#!/bin/sh

# running git init twice is safe
git init

while read date
do
  fileName=`echo "$date" | tr " " "_"`
  #echo $fileName -> Sun_Jan_06
  date="$date 10:00 2015 +0300"
  #echo $date -> Sun Jan 06 10:00 2015 +0300
  echo "Creating file... $fileName"
  touch "$fileName"
  git add "$fileName"
  git commit --date="$date" -m "$fileName"
done < dates.txt

