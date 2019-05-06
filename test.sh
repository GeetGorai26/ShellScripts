#while read line
#do
#        echo "Line is : $line"
#done < file.csv
#echo '**********'
rm output.csv
echo 'Program Started'
while IFS="," read f1 f2
do
	#echo 'telnet' $f1 $f2	
	nc -zvw 5 $f1 $f2 2>/dev/null
        if [ $? = 0 ]
	then 
	
	echo $f1 "," $f2 ",Success" >> output.csv
	else
	echo $f1 "," $f2 ",Fail" >> output.csv
	fi
		
done < file.csv

echo 'END **********'
