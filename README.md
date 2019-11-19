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
* raspberry setup 
 * * test
* antenna setup 
* appearance setup





    
    
    
