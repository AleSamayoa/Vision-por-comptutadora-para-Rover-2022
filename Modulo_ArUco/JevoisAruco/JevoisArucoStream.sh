#! usr/bin/bash
killall screen 
screen /dev/ttyACM0 115200 "setpar serout USB setmapping2 YUYV 320 240 50.0 JeVois DemoArUco setpar serlog None setpar serstyle Normal streamon"