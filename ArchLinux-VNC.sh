#!/bin/sh
echo "Click Web Preview > Preview On Port 6080 to access noVNC RDP"
echo "Installing Arch Linux Environment + VNC Server (1-2 minutes)...."

# تشغيل الحاوية في الخلفية مع إعدادات VNC
sudo docker run --name archlinux-vnc --privileged --shm-size 1g -d -p 5900:5900 -p 6080:6080 -e VNC_PASSWD=Jor3a-Ti9niya dcsunset/archlinux-vnc

# تشغيل عداد زمني لمدة 12 ساعة (43200 ثانية)
seq 1 43200 | while read i; do 
    echo -en "\r Running .     $i s /43200 s"; sleep 0.1
    echo -en "\r Running ..    $i s /43200 s"; sleep 0.1
    echo -en "\r Running ...   $i s /43200 s"; sleep 0.1
    echo -en "\r Running ....  $i s /43200 s"; sleep 0.1
    echo -en "\r Running ..... $i s /43200 s"; sleep 0.1
    echo -en "\r Running     . $i s /43200 s"; sleep 0.1
    echo -en "\r Running  .... $i s /43200 s"; sleep 0.1
    echo -en "\r Running   ... $i s /43200 s"; sleep 0.1
    echo -en "\r Running    .. $i s /43200 s"; sleep 0.1
    echo -en "\r Running     . $i s /43200 s"; sleep 0.1
done
