#! usr/bin/bash
#killall screen
echo -e "setpar serout USB" >>/dev/ttyACM0 115200 
echo -e "setmapping2 YUYV 320 240 50.0 JeVois DemoArUco">>/dev/ttyACM0 115200 
echo -e "setpar serlog None">>/dev/ttyACM0 115200 
echo -e "setpar serstyle Normal">>/dev/ttyACM0 115200 
echo -e "streamon">>/dev/ttyACM0 115200 






