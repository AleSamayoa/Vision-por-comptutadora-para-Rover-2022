import numpy as np
import cv2,time

cv2.namedWindow("Image Feed")
cv2.moveWindow("Image Feed", 159, -25)

cap= cv2.VideoCapture(0)

cap.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)
cap.set(cv2.CAP_PROP_FPS, 40)

prev_frame_time= time.time()
cal_image_count=0
frame_count=0

while True:
    ret, frame=cap.read()


    new_frame_time=time.time()
    fps=1/(new_frame_time-prev_frame_time)
    prev_frame_time= new_frame_time
    
    cv2.imshow("Image Feed", frame)

    key=cv2.waitKey(1)& 0xFF
    if key == ord("q"): break

cap.release()
cv2.destroyAllWindows()
