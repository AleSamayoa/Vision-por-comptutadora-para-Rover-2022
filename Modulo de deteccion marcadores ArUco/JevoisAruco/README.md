# Modulo ArUco para la JeVois
La cámara JeVois ya cuenta con varios módulos de visión por computadora en la imagen de linux que tiene la cámara. Sí es posible realizar cambios sobre estos con la
librería de jevois-sdk o con la interfaz gráfica de jevois-inventor pero ninguna es compatible con la arquitectura de la Raspberry Pi, ya que necesitan un procesador AMD.
Por ende, el uso de esta cámara fue a través de llamar a la configuración de la cámara necesario por medio de puerto serial y obtener la información detectada utilizando
la librería de Python Serial. 


## JeVoisArucoStream.sh
Para llamar la configuración de la cámara se utilizó un archivo bash que le mandaba de una vez las instrucciones al módulo. La configuración de YUYV 320 240 50.0 JeVois 
DemoArUco es la de detección de marcadores predeterminada. Las demás instrucciones sirven para ajustar la manera en la que se muestran los datos y para cofnigurar ciertos 
parámetros en la cámara. Este programa se debe correr cuando se conecte la cámara.

## jevoisSerial.py
Una vez se hayan seteado los paramatros adecuados para llamar a la cámara con la configuración correcta, se debe recibir la información por medio del puerto serial al que
está conectado la cámara. Este programa utiliza la librería de PySerial para obtener esta información, separar la información que se recibe en el string y imprimirla en la 
terminal. Esto fue necesario para obtener esos datos desde el nodo de ROS. 
![jevoisserialpy](https://user-images.githubusercontent.com/69053381/195361817-a6fc2336-05f7-4f06-b4ca-52c5afa011d5.png)
