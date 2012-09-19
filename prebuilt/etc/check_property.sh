#check softmac
if [ -e /system/wifi/softmac ]
then
        echo update softmac
else
        touch /system/wifi/softmac
        echo 4C:54:`expr $RANDOM % 89 + 10`:`expr $RANDOM % 89 + 10`:`expr $RANDOM % 89 + 10`:`expr $RANDOM % 89 + 10` > /system/wifi/softmac
        sync
fi
