# RTKGPS
bluid base station and rover with neo-m8p-2-11 moudle, using u-center and rtklib
* * *


## Base Station
* Install u-center 
* setup antenna 
* u-center configure
* * *

### Install u-center 
[u-center](https://www.u-blox.com/en/product/u-center)
    This software for windows only
* * *

### setup antenna
    Ensure nothing block the antenna,It should in open space
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/DSC_0081.JPG)
    
* * *

### u-center configure
    click the default button and start to setting
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step1.png)

    Select port & Baudrate
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step2.png)
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step3.png)

    View->MessageView
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step4.png)

    Disable NMEA message & Enable UBX message
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step5.png)
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step6.png)

    View->MessageView->UBX->CFG->TMODE3
    Ensure click the send to send your configure
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step7.png)

    View->MessageView->UBX->NAV->SVIN
    It readly to send RTCM3 message now
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step8.png)

    Enable the NTRIP Server
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step9.png)

    Setting port & Mountpoint
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step10.png)
![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/u-center-step11.png)
* * *
    The Base Station is working now
* * *
## Rover
* Raspberry setup 
    * Raspbian stretch install & configure
    * Install kivy for python3 
    * Touchscreen setup
* Antenna setup 
* Appearance setup

### Raspbian stretch install & configure:
You can download image file from [stretch](http://downloads.raspberrypi.org/raspbian/images/raspbian-2018-11-15/)

### Install kivy for python3:
1.  Update for raspberry:

        $sudo apt update
    
2.  Install for raspberry:

        $sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev \
        pkg-config libgl1-mesa-dev libgles2-mesa-dev \
        python-setuptools libgstreamer1.0-dev git-core \
        gstreamer1.0-plugins-{bad,base,good,ugly} \
        gstreamer1.0-{omx,alsa} python-dev libmtdev-dev \
        xclip xsel libjpeg-dev
3.  Install moudle for python3:
    
        $pip3 install setuptools
        $pip3 install Cython
    
4.  Install kivy for python3:
    
        ~$git clone https://github.com/kivy/kivy
        ~$cd kivy
        ~/kivy$pip3 install .
    
5.  Setting official Pi touchscreen:

        ~$vi ./kivy/config.ini

    find [input] and add 2line:
    
        mtdev_%(name)s = probesysfs,provider=mtdev
        hid_%(name)s = probesysfs,provider=hidinput
6.  Use example to test:
        
        ~$python3 kivy/examples/demo/showcase/main.py
    ![image](https://github.com/Bo-Zhang-Lin/RTKGPS/blob/master/picture/rover1.png)
    
    more detail for [kivy](https://github.com/kivy)
        
        
        
    
        
    

    





    
    
    
