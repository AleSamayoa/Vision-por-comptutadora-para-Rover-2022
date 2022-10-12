# Modulo ArUco para el Microsoft Kinect
En este folder se encuentran todos los programas que se utilizaron para el Microsoft Kinect. Esta se trabajó con la imagen de Ubuntu y con las librerías de OpenCV en Python. Fue necesaria primero la instalación del sistema operativo como indica la guía de conexión del Kinect y se utilizó básicamente lo mismo que para la Raspberry Cam.

## vid_with_cv2.py
Este primer archivo fue una prueba de cómo configurar la cámara, usando OpenCV, para que tome video constante. 

## photos.py, detect.py, process.py y vid_aruco.py
Estos cuatro archivos son parte del conjunto que realiza la detección de marcadores ArUco.
### Calibración de cámara
Antes de la detección es necesario realizar una calibración de cámara. El primer programa que se debe correr es photos.py que realiza una serie de capturas y guarda las 
imagenes con cierto nombre. Es necesario tener impreso un tablero de calibración y de tener en cuenta las dimensiones del tablero y cada uno de los cuadros. Luego se corre el programa, colocando el tablero frente a la cámara y cambiando lentamente la distancia a la que se coloca. Luego, es necesario ir al archivo dónde se encuentran las imágenes y borrar todas aquellas que salgan demasiado borrosas, movidas o no contengan la imagen completa del tablero. 

Ya con eso se puede correr el programa de detect.py, que toma esas imágenes que se tomaron y realiza un algoritmo de detección de esquinas y líneas. Aquí se cambian las
dimensiones a las dimensiones reales del tablero impreso. El programa calcula la distorsión de la cámara según la distancia que debería de tener y la medida en las esquinas.

![detectwkinect](https://user-images.githubusercontent.com/69053381/195363112-a5e9ca71-3c37-4289-9083-3de10bde55ea.png)

El programa guarda una matriz de calibración en otro archivo y esta se utiliza más adelante. 

### Detección de marcadores
El programa de process.py detecta los marcadores de una sola imagen e imprime su identificación en la terminal. El algoritmo de detección en tiempo real del video se realiza en el archivo vid_aruco.py. Este llama el diccionario de ArUco de OpenCV y realiza un proceso de thresholding para identificar los marcadores. La cámara toma video constante y realiza el algoritmo sobre esa imagen, obteniendo las coordenadas x, y & z  y el identificador del marcador. El dato del 
identificador se imprime en la terminal y no se sobreescribe sobre la imagen, ya que no es útil para la plataforma de esa manera. 
