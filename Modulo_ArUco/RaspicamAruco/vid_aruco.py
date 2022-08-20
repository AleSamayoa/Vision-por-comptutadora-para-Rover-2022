import numpy as np
import cv2
import cv2.aruco as aruco

marker_size=10
#Se llama la calibración de la cámara que se utilizó en el programa camera_cal
with open('camera_cal.npy', 'rb') as f:
    camera_matrix=np.load(f)
    camera_distortion=np.load(f)

#Se llama el diccionario de ArUco de cv
aruco_dict=aruco.getPredefinedDictionary(aruco.DICT_4X4_250)

#Se setean los parámetros de la captura de video de la raspicam
cap= cv2.VideoCapture(0)
camera_width=640
camera_height= 480

camera_frame_rate=30
cap.set(3, camera_width)
cap.set(4, camera_height)
cap.set(5, camera_frame_rate)

while True:

#Get frame and convert to grayscale
    ret, frame=cap.read()
    gray_frame= cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    #Se llama la función de detección de marcadores
    corners, ids, rejected= aruco.detectMarkers(gray_frame, aruco_dict, camera_matrix, camera_distortion)

    #Si identifica algo:
    if ids is not None:
        #Se elimino del programa la parte de dibujar sobre la imagen los datos sino que solo imprime el número del aruc>        rvec,tvec, _objPoints= aruco.estimatePoseSingleMarkers(corners, marker_size, camera_matrix, camera_distortion)
        for marker in range(len(ids)):
            print(ids[marker][0])
##Se deja de tomar video
cv.waitKey(0)
cap.release()
cv2.destroyAllWindows()