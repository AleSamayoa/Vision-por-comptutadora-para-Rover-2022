#!/usr/bin/python
  
# Needed packages: sudo apt install python-serial
  
# This tutorial is a simple program that allows one to read and parse serial messages from JeVois
  
serdev = '/dev/ttyACM0' # serial device of JeVois


  
import serial
import time
import subprocess
  
with serial.Serial(serdev, 115200, timeout=1) as ser:
    e=subprocess.run(["./JeVoisArucoStream.sh"], shell=True)
    print(e)
    while 1:
        

        #ser.write(b'streamon')
         # Read a whole line and strip any trailing line ending character:
        line = ser.readline().rstrip()
        print ("received: {}".format(line))
  
        # Split the line into tokens:
        tok = line.split()
  
        # Skip if timeout or malformed line:
        if len(tok) < 1: print("ok")
  
        # Skip if not a standardized "Normal 2D" message:
        # See http://jevois.org/doc/UserSerialStyle.html
       # if tok[1] == 'N2': print("ok")
        
  
        # From now on, we hence expect: N2 id x y w h
        if len(tok) != 6: continue
  
        # Assign some named Python variables to the tokens:
        key, id, x, y, w, h = tok
        
        print ("Found ArUco {} at ({},{}) size {}x{}".format(id, x, y, w, h))
  #      print (x)
