


Crear los certificados:
-Paso 1: Sudo passwd y meted contraseña a root
-Paso 2: entrar a root con su y la contraseña
-Paso 3: Introducir el siguiente comando openssl req -x509 -nodes -days 36500 -newkey rsa:2048 -keyout /etc/nginx/ssl/owncloud.key -out /etc/nginx/ssl/owncloud.crt
-Paso 4: Reiniciar Nginx: service nginx restart