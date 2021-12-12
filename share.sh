ip=`hostname -I`
echo you can access me @$ip:8000
python3 -m http.server 8000
