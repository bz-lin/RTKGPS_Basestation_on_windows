# Setup BaseStation use ublox neo-m8p-2-11 on Windows
bluid base station with neo-m8p-2-11 moudle on windows10 by ucenter 
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



    

        


       
        
        
        
    
        
    

    





    
    
    
