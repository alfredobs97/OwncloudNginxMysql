<h1>Owncloud de forma automática usando Vagrant</h1>

<h2>Plugins necesarios para el correcto funcionamiento:</h2>
<pre>
        Vagrant-hostsupdater para poder entrar por el nombre de la máquina
 </pre>
<h2>Instrucciones para su funcionamiento:</h2>
<pre>
        Vagrant up (Esperar hasta que termine)
        Vagrant ssh 
        Crear los certificados:
                -Paso 1: Sudo passwd y meted contraseña a root
                -Paso 2: entrar a root con su y la contraseña
                -Paso 3: Introducir el siguiente comando openssl req -x509 -nodes -days 36500 -newkey rsa:2048 -keyout /etc/nginx/ssl/owncloud.key -out /etc/nginx/ssl/owncloud.crt
                -Paso 4: Reiniciar Nginx: service nginx restart
</pre>
