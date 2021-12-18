# Bash-Extension 🚀
Script creado en el lenguaje de Scripting Bash, el objetivo es monitorear el estado OK de una extensión en Asterisk y dependiendo de esto enviar un correo informando la desconexión.

- Creado y probado en Centos7/Asterisk

# Requerimientos:

- Mutt
- Git

# Instalación 🔧

### Primer paso:
- Descargar:
```Bash
git clone https://github.com/nicolasmurciaa/Bash-Extension.git
```
### Segundo paso:
```Bash
mv Bash-Extension /etc/
cd /etc/Bash-Extension/
chmod +x *
./requirements.sh
```
### Tercer paso:
```Bash
mv bash-extension /usr/bin/
```
### Cuarto paso:
```Bash
crontab -e
* * * * * /usr/bin/bash-extension
```

# Nota
La extensión que se desea monitorear se debe agregar dentro de la variable extension en el archivo bash-extension


```Bash
#Variables
extension="1120"
```

