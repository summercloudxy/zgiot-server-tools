#!/bin/sh 
step=10

while true; do
        #connect=`netstat -n | awk '/^tcp/ {++S[$NF]};END {for(a in S) print a, S[a]}'`
        date=`date +%y%m%d`
        time=`date +%y%m%d,%H:%M:%S`
        appserver_conn=`netstat -an | awk '/^tcp/' |grep :9090|grep ESTABLISHED|wc -l`
        dataengine_conn=`netstat -an | awk '/^tcp/' |grep :8181|grep ESTABLISHED|wc -l`
        mem=`free | awk '/Mem/ {print int(($3/$2)*100)}'`
        cpu=`uptime |awk '{print $NF*100 }'`
        net=`ifconfig ens160 | grep bytes`
        netline=`echo $net`


        echo -e "$time\ta:$appserver_conn\td:$dataengine_conn\tcpu:$cpu%\tmem:$mem%\t$netline" 

        # add alarm here if you want . 
        # change ECHO to mail script.

        if [ $mem -gt 80 ] ;then
        echo "mem is gt then 80"
        fi
        if [ $cpu -gt 80 ] ;then
        echo "cpu is gt then 80"
        fi

        sleep $step
done

