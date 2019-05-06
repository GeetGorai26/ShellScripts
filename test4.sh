
var=15
count=0
while [ $count -eq 0 ]
do
d5=$(date --date="-$var min" "+%b %d %H:%M")
count=`awk "/$d5/,0" syslog |wc -l`
if [ $count -ne 0 ] 
then
awk "/$d5/,0" syslog | grep -i "Connection Refused" | mail -s "Script test4.sh Error" sangeeta.gorai@gmail.com

else
var=`expr $var - 1`;
fi
done


 	 





