# Bash-Extension 🚀
Script creado en el lenguaje de Scripting Bash, el objetivo es monitorear el estado OK de una extensión en Asterisk y dependiendo de esto enviar un correo informando la desconexión.

- Creado y probado en Centos7/Asterisk

# Requerimientos:

- Mutt
- Git

# Instalación 🔧

## Primer paso:
- Descargar git clone https://github.com/nicolasmurciaa/Bash-Extension.git

## Segundo paso:
```Bash
mv Bash-Extension /etc/
```
```Bash
cd /etc/Bash-Extension/
```
```Bash
chmod +x *
```
```Bash
./requirements.sh
```
## Tercer paso:
```Bash
mv bash-extension /usr/bin/
```
## Cuarto paso:
- crontab -e
```Bash
* * * * * /usr/bin/bash-extension
```






