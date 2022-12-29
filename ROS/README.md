# Integración por ROS

El siguiente workspace es un workspace para ROS2 FOXY FITZROY para el nodo aruco_odom que publica información de odometría obtenida de un módulo de detección de marcadores ArUco implementado con la cámara JeVois Smart Vision Camera A33. 

Lo primero que hace es realizar la conexión con la cámara por puerto serial. Luego, corre un *bash script* que envía la configuración correcta a la cámara para que detecte los módulos y mande la información que se busca en 3D y con todos los detalles. Lee la infomación de la cámara, la separa y publica la información necesaria. Utiliza el paquete de ROS de *nav msg* para enviar los datos de identificación (ID del marcador, ubicación (coordenadas X, Y & Z) y orientación (cuaterniones).

A continuación se puede ver una imagen del nodo funcionando y el *echo* del nodo para poder observar la información que se esta publicando en el tópico. 
![rosnoderunning](https://user-images.githubusercontent.com/69053381/204115306-0e377f27-512a-4b73-b8f0-3635b9f45c3f.png)
