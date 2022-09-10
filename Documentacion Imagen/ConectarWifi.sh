#/bin/bash
PS3="Seleccione una de las redes predeterminadas o seleccione la opción de crear una nueva red: "

select red in UVG Robotat Otra;
do 
  case $red in
    UVG)
printf '%s\n' "
network:
    ethernets:
        eth0:
            optional: true
            dhcp4: true
    version: 2
       
    wifis:
       wlan0:
           optional: true
           access-points:
             \"UVG\": {}
           dhcp4: true  
"> /etc/netplan/50-cloud-init.yaml
      ;;
    Robotat) 
printf '%s\n' "
network:
    ethernets:
        eth0:
            optional: true
            dhcp4: true
    version: 2
            
    wifis:
       wlan0:
           optional: true
           access-points:
             \"Robotat\": 
                 password: \"iemtbmcit116\" 
           dhcp4: true  
        "> /etc/netplan/50-cloud-init.yaml
      ;;
    Otra)
      echo "Ingrese el nombre de la red a la que quiere ingresar:"
      read name
      echo "Ingrese la contraseña de la red. Si la red no tiene contraseña, ingrese la letra n:"
      read contra
if [[ $contra == "N" || $contra == "n" ]]; then
printf '%s\n' "
network:
    ethernets:
        eth0:
            optional: true
            dhcp4: true
    version: 2
    
    wifis:
       wlan0:
           optional: true
           access-points:
             \"$name\": {}
           dhcp4: true  
"> /etc/netplan/50-cloud-init.yaml

else
printf '%s\n' "
network:
    ethernets:
        eth0:
            optional: true
            dhcp4: true
    version: 2
    
    wifis:
       wlan0:
           optional: true
           access-points:
             \"$name\":
                 password: \"$contra\"
           dhcp4: true
              
"> /etc/netplan/50-cloud-init.yaml

fi     
      ;;
      *)
      echo "Opción inválida, por favor seleccione una de las opciones mostradas";;
  esac
  break
done
netplan apply
