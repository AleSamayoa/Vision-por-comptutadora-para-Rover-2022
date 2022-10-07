# Vision por computadora para Rover 2022
Repositorio de la programación que se utilizó para la creación de módulos de visión por computadora en ROS utilizando la RaspiCam, la cámara JeVois y el Microsoft Kinect para el trabajo de graduación de Alejandra Samayoa.
##Sobre el proyecto
Uno de los proyectos que se elaboró en la Universidad del Valle en el año 2022 fue una plataforma robótica móvil, el Rover UVG. El siguiente proyecto consiste el módulo de visión por computadora del rover unido, a este por ROS FoxyFitzRoy. El proyecto consistió en una comparación entre una RaspiCam y una cámara JeVois A33 para realizar un módulo de detección de marcadores ArUco y el envio de información de estos por ROS. Además, se querían realizar pruebas con una cámara Microsoft Kinect para Window v1. Todo esto se realizó sobre una instalación de Ubuntu 20.04 para que funcionara sobre una Raspberry Pi 4. 
##Estructura de Folders
### Documentación Imagen
Se realizó una imagen para Raspberry Pi que contará con ROS, por lo que se le descargó una versión de Linux Ubuntu 20.04. En el folder de Documentación de Imagen se tienen
las guías para la instalación de la imagen y la guía para realizar la conexión de la Raspberry a una red de internet. 

### Modulo ArUco
Uno de los módulos de visión por computadora que se realizó para el proyecto con las cámaras RaspiCam y JeVois fue el de detección de marcadores ArUco. En el folder se 
encuentran los códigos que se utilizaron para realizar esto. Para la JeVois, simplemente se llamaba el módulo ya instalado en la imagen de la cámara mientras que sí fue 
necesario realizar el algoritmo completo utilizando las librerías de OpenCV. 
