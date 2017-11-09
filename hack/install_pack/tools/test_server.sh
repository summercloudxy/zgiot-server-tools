echo '--- ping dataengine'
curl http://localhost:8181/data-engine/sys-stats/all
echo ''
echo ''
echo '--- try get metrics from appserver...' 
curl http://localhost:9090/app-server/metric | grep -o '"obj"'
echo ''
echo ''
echo '--- try get data ... '
curl http://localhost:9090/app-server/data/thing/1113/metric/STOP_CMD
echo ''
