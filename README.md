# Bash-Extension
Script creado en el lenguaje de Scripting Bash, el objetivo es monitorear el estado OK de una extensión en Asterisk y dependiendo de esto enviar un correo informando la desconexión.

- Creado y probado en Centos7


# Requerimientos:

- Mutt
- Git

# Nota:
No debe ser agregado a Cron ya que contiene su propio demonio.

# Instalación:

Primer paso:
- Descargar git clone https://github.com/nicolasmurciaa/Bash-Extension.git

Segundo paso:
- mv Bash-Extension /etc/
- cd /etc/Bash-Extension/
- chmod +x *
- ./requirements.sh

Tercer paso:
- mv bash-extension /usr/bin/

Cuarto paso:
- crontab -e
- * * * * * /usr/bin/bash-extension





