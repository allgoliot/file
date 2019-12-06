#/bin/bash
if [ $# == 0 ];then
        echo "Usage : $0 ip_a_tester"
else
        ip=$1
fi

for ((i=1;i<=10;i++))
do
        echo total_time: $(echo "`curl -s -o /dev/null -w '1000*%{time_total}\n' -s http://$ip` " | bc) "ms"
done

