#/bin/bash
echo "Ingrese el nombre de la red a la que quiere ingresar entre comillas:"
read name
echo "Ingrese la contraseña entre comillas. Si la red no tiene contraseña, ingrese la letra n:"
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
             $name: {}
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
             $name:
                 password: $contra
           dhcp4: true
              
"> /etc/netplan/50-cloud-init.yaml

fi
netplan apply
