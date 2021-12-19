#!/bin/bash 
#Validación extension
####### by Nicolas Murcia########### 
#### immurcia95@gmail.com #### 

#Variables
extension="1000"
email="XXX@XXXX"
estado=OK

#Envio resultado a txt 
touch /etc/Bash-Extension/$extension.txt

sleep 1

sudo /sbin/asterisk -rx "sip show peers" |grep $extension > $extension.txt 2>&1

#variable para discriminar el OK
base1=`ls -l | awk '{ print $8 }' $extension.txt`

echo $base1

        if [ "$base1" = "$estado" ];
            then
                echo "Extension $extension OK" 
        else
                echo "Verificar extension $extension no esta registrando " | /usr/bin/mutt -s" Extension alarmada " $email -a $extension.txt
                echo "Email enviado" 
fi
