#!/system/bin/sh
#
# SD-swap manager
#read on http://4pda.ru/forum/index.php?showtopic=191148&view=findpost&p=12961073

#Setting up the system for read/write access
if [ "`ls /sbin|grep -q recovery;echo $?`" = "0" ];
then
    mount -a > /dev/null
    recoverymode=y
else
    mount -o rw,remount /system
    recoverymode=n
fi






case "$1" in
   enable)
          # Swappiness
          echo "Enter the value of swappiness"
          read swappy
	  # Add swap if we find a partition for it
          echo '#!/system/bin/sh' >> /system/bin/sdswap.sh
           cp -f /system/etc/init.local.rc /system/etc/init.local.rc.backup
             echo '' >> /system/etc/init.local.rc
             echo '' >> /system/etc/init.local.rc
             echo 'service sdswap    /system/bin/sdswap.sh' >> /system/etc/init.local.rc
             echo '        user root' >> /system/etc/init.local.rc
             echo '        group root' >> /system/etc/init.local.rc
             echo '        oneshot' >> /system/etc/init.local.rc
      if  [ -e /dev/block/mmcblk0p3 ]
	  then
               echo '/system/xbin/swapon /dev/block/mmcblk0p3' >> /system/bin/sdswap.sh
	  elif [ -e /dev/block/mmcblk0p2 ]
	  then
               echo '/system/xbin/swapon /dev/block/mmcblk0p2' >> /system/bin/sdswap.sh
      fi
      echo "sysctl -w vm.swappiness=$swappy" >> /system/bin/sdswap.sh
      chmod 777 /system/bin/sdswap.sh
      chown root:shell /system/bin/sdswap.sh
      echo 'swap enabled'
      sysctl -w vm.swappiness=$swappy
   ;;

   disable)
      rm /system/bin/sdswap.sh
      cp -f /system/etc/init.local.rc.backup /system/etc/init.local.rc
      echo 'swap disabled'
   ;;

   start)

      	  # Add swap if we find a partition for it
      if [ -e /dev/block/mmcblk0p3 ]
	  then
		/system/xbin/swapon /dev/block/mmcblk0p3
	  elif [ -e /dev/block/mmcblk0p2 ]
	  then
		/system/xbin/swapon /dev/block/mmcblk0p2
      fi
   ;;

   stop)
    swapoff /dev/block/mmcblk0p2
	  swapoff /dev/block/mmcblk0p3
   ;;
   *)
      echo "Usage: $0 {enable|disable|start|stop}"
      exit 1
esac

exit 0

