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
```Bash
crontab -e
* * * * * sh /etc/Bash-Extension/extension.sh >/etc/Bash-Extension/cron.log 2>&1
```

# Nota
La extensión que se desea monitorear se debe agregar dentro de la variable extension en el archivo extension.sh al igual que el correo en la variable email

```Bash
#Variables
extension="1120"
email="XXX@XXX"
```

