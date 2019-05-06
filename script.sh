
awk -F: '{print $1}' /etc/passwd

getent passwd | awk -F: '{print $1} {print $7}' >> /home/pavan/Sangeeta/output1.txt 
