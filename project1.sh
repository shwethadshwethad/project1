Memory script.


memorycheck.sh

#!/bin/bash
space=`df -h .|tail -1|awk -F " " '{print $(NF-1)}'|sed 's/%/ /g'`
if [ $space -ge 90 ];then
echo "Disk memory is more than 90%. Please take action"|mail -s "Memory alert" abc@test.com
fi


cronjobs

* * * * *
* --> minutes(0-59)
* --> hours(0-23)
* --> date(1-31)
* --> month(1-12)
* --> day of week(0-6)

00 1-19 * * *  ./test.sh

=============================================================================================================================

Service check script.

#!/bin/bash
services="service1, service2, service3"
echo "Please take the action for stopped services" > log
for i in $services
do
ps -ef|grep -i "$i"
if [ $? -ne 0 ];then
cat log|mail -s "Service is not running" abc@test.com
sudo service "$i" restart
fi
done



begfiovbal
fhewoihfojp
hfewiohilfb
nbwueruqinclksafhiobv
