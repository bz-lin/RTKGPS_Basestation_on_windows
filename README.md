# Setup RTKGPS use ublox neo-m8p-2-11 #
bluid base station and rover with neo-m8p-2-11 moudle, using u-center and rtklib
* * *


## Base Station ##
* Install u-center 
* setup antenna 
* u-center configure
* * *

### Install u-center: ###
>[u-center](https://www.u-blox.com/en/product/u-center) This software for windows only
* * *

### setup antenna: ###
>Ensure nothing block the antenna,It should in open space
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/DSC_0081.JPG)
    
* * *

### u-center configure: ###
1.  click the default button and start to setting:

![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step1.png)


2.  Select port & Baudrate:

![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step2.png)
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step3.png)

3.  View->MessageView:

![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step4.png)

4.  Disable NMEA message & Enable UBX message:

![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step5.png)
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step6.png)

5.  View->MessageView->UBX->CFG->TMODE3

    Ensure click the send to send your configure
    
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step7.png)

6.  View->MessageView->UBX->NAV->SVIN

    It readly to send RTCM3 message now
    
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step8.png)

7.  Enable the NTRIP Server:

![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step9.png)

8.  Setting port & Mountpoint:

![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step10.png)
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step11.png)
* * *
The Base Station is working now
* * *

## Monitor
* Raspberry setup 
    * Raspbian Buster install & configure
    * Install kivy ver.1.11.1 for python3 
    * Touchscreen setup
    * FTP setup
    * Boot kivy auto start setup
* Antenna setup 
* Appearance setup

### Raspbian stretch install & configure:
You can download image file from [Buster Lite](https://downloads.raspberrypi.org/raspbian_lite_latest)

### Enable SSH Service:
        $sudo systemctl enable ssh
        $sudo systemctl start ssh
        
### Rotate touchscreen:
>Setting File:

        $sudo vi /boot/config.txt
>Add Line:

        lcd_rotate=2
### Install FTP Server:
>Install CMD:

        $sudo apt install vsftpd

>Setting File:

        $sudo vi /etc/vsftpd.conf

>Remove one Line '#':

        #write_enable=Yes
        write_enable=Yes
>Enable service:

        $sudo systemctl enable vsftpd
### Setup raspberry to route AP:
You can follow from [RaspAP](https://raspap.com/)
        

### Install kivy for python3 on raspbian:
1.  Update for raspberry:

        $sudo apt update
    
2.  Install for raspberry:

        $sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev \
        pkg-config libgl1-mesa-dev libgles2-mesa-dev \
        python-setuptools libgstreamer1.0-dev git-core \
        gstreamer1.0-plugins-{bad,base,good,ugly} \
        gstreamer1.0-{omx,alsa} python-dev libmtdev-dev \
        xclip xsel libjpeg-dev
        
3.  Additional install SDL2:
        
        $sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev
        
4.  Install moudle for python3:
    
        $pip3 install setuptools
        $pip3 install Cython
    
5.  Install kivy1.11.1 for python3:
         
        ~$wget https://kivy.org/downloads/1.11.1/Kivy-1.11.1.tar.gz
        ~$tar -xvaf Kivy-1.11.1.tar.gz
        ~$cd kivy-1.11.1
        ~/kivy$pip3 install .
    
6.  Setting official Pi touchscreen:

        ~$vi ./kivy/config.ini

    find [input] and add 2line:
    
        mtdev_%(name)s = probesysfs,provider=mtdev
        hid_%(name)s = probesysfs,provider=hidinput
7.  Use example to test:
        
        ~$python3 kivy/examples/demo/showcase/main.py
    ![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/rover1.png)
    
    more detail for [kivy](https://github.com/kivy)
    
### Auto Start Kivy App on Boot:
1.  File Location:

        Your start bash file => /home/pi/start_App.sh
        Your Kivy App => /home/pi/kivyapp/main.py
        Your systemd File => /lib/systemd/system/kivyapp.service
        
2. start_App.sh content:

        #!/bin/bash
        cd /home/pi
        /usr/bin/python3 /home/pi/kivyapp/main.py
        
3. Add kivyapp.service for systemd :
>Add kivyapp.service
        
        sudo vi /lib/systemd/system/kivyapp.service
        
>Add Lines:

        [Unit]
        Descriptiona=KivyApp Service
        After=multi-user.target

        [Service]
        Type=idle

        User=pi        
        ExecStart=/bin/bash /home/pi/start_App.sh

        Restart=always
        RestartSec=0

        [Install]
        WantedBy=multi-user.target
        
 >Reload Daemon:
 
        $sudo systemctl daemon-reload
 
 >Enable Service:
 
        $sudo systemctl enable kivyapp.service

>Reboot to Test:

        $sudo reboot

         
### Disable screen sleep:
Change config:

        ~$sudo nano /etc/lightdm/lightdm.conf
        
Add the following lines to the [SeatDefaults] section:

        # don't sleep the screen
        xserver-command=X -s 0 dpms

    
* * *
## Install kivy for python3 on Windows10 for Development 
1.  Install Anaconda:
>https://www.anaconda.com/distribution/

2.  Create virtaul enviroment

    >lanuch anaconda prompt

        (base)C:\Users\user.user>conda create --name ENVIRONMENT python=MAIN.MINOR.PATCH
        
    >Create Example
        
        (base)C:\Users\user.user>conda create --name pygui python=3.7.3
    
    >Remove Example
    
        (base)C:\Users\user.user>conda remove --name pygui --all
    
3.  Activate virtaul enviroment

        (base)C:\Users\user.user>conda activate ENVIRONMENT        
    >Example

        (base)C:\Users\user.user>conda activate pygui
        

 
4.  Install kivy version=1.11.1

        (pygui)C:\Users\user.user>pip install kivy==1.11.1
        (pygui)C:\Users\user.user>pip install docutils pygments pypiwin32 kivy.deps.sdl2 kivy.deps.glew
        
5.  Enviroment Copy
    
    >Backup enviroment CMD
    
        conda env export --name ENVIRONMENT --file ENVIRONMENT.yml
        
    >Example
    
        conda env export --name pygui --file pygui.yml
    
    >Recovery enviroment CMD
    
        conda env create --file ENVIRONMENT.yml --name ENVIRONMENT
    
    >Example
        
        conda env create --file pygui.yml --name pygui
        
6.  Test kivy
        >https://github.com/kivy/kivy
        
## Rover
* Raspberry setup 
    * Raspbian Buster install & configure         
    * FTP setup
    * Boot python3 auto start setup
* Antenna setup 
* Appearance setup

### Raspbian stretch install & configure:
You can download image file from [Buster Lite](https://downloads.raspberrypi.org/raspbian_lite_latest)

### Enable SSH Service:
        $sudo systemctl enable ssh
        $sudo systemctl start ssh

### Install FTP Server:
>Install CMD:

        $sudo apt install vsftpd

>Setting File:

        $sudo vi /etc/vsftpd.conf

>Remove one Line '#':

        #write_enable=Yes
        write_enable=Yes
>Enable service:

        $sudo systemctl enable vsftpd

### Auto Start python3 on Boot:
1.  File Location:
        
        Your python3 => /home/pi/test/main.py
        Your systemd File => /lib/systemd/system/python3test.service
        
2.  Wait for Network at Boot Setting:
>setting CMD

        $sudo raspi-config
        
> Raspberry Pi Software Configuration Tool (raspi-config) 
   
        =>3 Boot Options         Configure options for start-up
            =>B2 Wait for Network at Boot Choose whether to wait for network connection

             
3. Add python3test.service for systemd :
>Add python3test.service
        
        sudo vi /lib/systemd/system/python3test.service
        
>Add Lines:

        [Unit]
        Descriptiona=python3test Service
        After=multi-user.target

        [Service]
        Type=idle

        User=pi        
        ExecStart=/usr/bin/python3 /home/pi/test/main.py

        Restart=always
        RestartSec=0

        [Install]
        WantedBy=multi-user.target
        
 >Reload Daemon:
 
        $sudo systemctl daemon-reload
 
 >Enable Service:
 
        $sudo systemctl enable python3test.service

>Reboot to Test:

        $sudo reboot

       
        
        
        
    
        
    

    





    
    
    
