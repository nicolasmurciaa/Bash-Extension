#!/bin/bash 
#### immurcia95@gmail.com #### 
echo Iniciando Verificación:

function ProgressBar {

    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done

    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")

printf "\rProgress : [${_fill// /#}${_empty// /-}] ${_progress}%%"

}

_start=1
_end=100

for number in $(seq ${_start} ${_end})
do
    sleep 0.1
    ProgressBar ${number} ${_end}
done
printf '\nVerificación Realizada\n'

function instalado() {
aux=$(rpm -qa mutt)
if `echo "$aux" | grep "mutt" >/dev/null`
then
    return 1
else
    return 0
fi
}

instalado $1 &> /dev/null

if [ "$?" = "1" ]
    then
        echo El paquete $aux ya esta instado.
    else
        echo Mutt no está instalado, procediendo a instalar...
        sudo yum install mutt -y
        echo Mutt ha sido instalado!
fi


