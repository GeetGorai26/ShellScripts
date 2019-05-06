#while read line
#do
        echo "Line is : $line"
	echo "Hello"
date2=`awk '{print substr($0,1,14)}' syslog`
date1=`date +"%a %b %d %H:%M"`
date3=`date +"%a %b %d %H%M"`
echo Sysdate $date1
echo $date2
echo $date3


echo '**********'
	

