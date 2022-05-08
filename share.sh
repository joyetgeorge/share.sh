source /etc/os-release

case $ID in
    manjaro)
        ip=`ip -json route get 8.8.8.8 | jq -r '.[].prefsrc'`
        echo $ip
    ;;
    ubuntu)
        ip=`hostname -I`
    ;;
    arch)
        ip=`ip -json route get 8.8.8.8 | jq -r '.[].prefsrc'`
        echo $ip
    ;;
    *)
        ip=`hostname -I`
    ;;
esac
echo you can access me @$ip:8000
python3 -m http.server 8000
