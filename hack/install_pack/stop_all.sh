P1=`ps aux |grep  'dataengine' |grep -v 'grep' |awk '{print $2}'`
P2=`ps aux |grep  'appserver' |grep -v 'grep' |awk '{print $2}'`
kill $P1 $P2 
