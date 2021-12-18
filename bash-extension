#!/bin/bash 
#Validación extension
####### by Nicolas Murcia########### 
#### immurcia95@gmail.com #### 

#Variables
extension="1120"
email="immurcia95@gmail.com" 
estado=OK 

#Envio resultado a txt 
asterisk -rx "sip show peers" |grep $extension >/etc/Bash-Extension/$extension.txt 

#variable para discriminar el OK
base1=`ls -l | awk '{ print $8 }' $extension.txt` 

echo $base1

        if [ "$base1" = "$estado" ];
            then 
                echo "Extension $extension OK" 
        else 
                echo "Verificar extension $extension no esta registrando " | /usr/bin/mutt -s" Extensiones Centro de Gestion " $email -a $extension.txt 
                echo "Email enviado" 
fi 
