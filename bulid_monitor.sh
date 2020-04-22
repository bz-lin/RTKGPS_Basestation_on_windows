### build monitor with raspberry buster lite img ###

#enable ssh service
systemctl enable ssh

#change password for pi
#echo pi:monitor | chpasswd

#Rotate touchscreen
#echo "lcd_rotate=2" >> /boot/config.txt

#change mirror for raspi
#http://free.nchc.org.tw/raspbian/raspbian
#echo "deb http://free.nchc.org.tw/raspbian/raspbian/ buster" > /etc/apt/sources.list     

#update for raspi
apt update

#install vsftpd.service & setting
apt install vsftpd -y

echo "write_enable=Yes" >> /etc/vsftpd.conf

#install raspap  

#install kivy ver.1.11.1
#apt install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev \
#pkg-config libgl1-mesa-dev libgles2-mesa-dev \
#python-setuptools libgstreamer1.0-dev git-core \
#gstreamer1.0-plugins-{bad,base,good,ugly} \
#gstreamer1.0-{omx,alsa} python-dev libmtdev-dev \
#xclip xsel libjpeg-dev \
#libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev python3-pip

#pip3 install setuptools
#pip3 install Cython
#wgt https://kivy.org/downloads/1.11.1/Kivy_examples-1.11.1-py2.py3-none-any.whl
#pip3 install Kivy_examples-1.11.1-py2.py3-none-any.whl







