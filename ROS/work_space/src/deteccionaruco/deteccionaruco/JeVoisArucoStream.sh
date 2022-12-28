#!/usr/bin/bash

echo -e "setpar serout USB" >>/dev/ttyACM0 115200 
echo -e "setmapping2 YUYV 320 240 2.0 JeVois DemoArUco">>/dev/ttyACM0  
echo -e "setpar dopose true">>/dev/ttyACM0  
echo -e "setpar serlog None">>/dev/ttyACM0  
echo -e "setpar serprec 2">>/dev/ttyACM0  
echo -e "setpar serstyle Detail">>/dev/ttyACM0  
echo -e "streamon">>/dev/ttyACM0  






