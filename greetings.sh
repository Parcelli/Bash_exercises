#asks name and greets goodm/day/eveing  according to time
time=$(date "+%T")
h=$(date "+%H")
day=$(date "+%b,%d")
echo What is yourname
read name

if [ "$h" -lt 12 ] ; then
echo "Goodmorning $name! It is now $time on this lovely day of $day"
elif [ "$h" -lt 18 ] ; then
echo "Goodday $name! It is now $time on this lovely day of $day"
else
echo "Goodevening $name! It is now $time on this lovely day of $day"
fi
