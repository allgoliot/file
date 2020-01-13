#/bin/bash
if [ $# == 0 ];then
        echo "Usage : $0 ip_a_tester"
else 
	command -V  bc &>/dev/null
        if [ $? -ne 0 ]; then
          command apt-get install bc
	  echo "j'ai installé"
        fi
        ip=$1
	for ((i=1;i<=10;i++))
		do
			echo total_time: $(echo "`curl -s -o /dev/null -w '1000*%{time_total}\n' -s http://$ip` " | bc) "ms"
		done
fi
