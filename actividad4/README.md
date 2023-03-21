# systemd unit para imprimir un saludo y la fecha actual en Ubuntu

* Paso 1: Crear el script

En primer lugar, crea el script que quieres ejecutar. En este caso, crearemos un script llamado "saludo.sh" que imprimirá un mensaje de saludo y la fecha actual. Para crear el script, abre un editor de texto y escribe lo siguiente:

### #!/bin/bash

### echo "¡Hola! La fecha actual es $(date)."

Guarde el script en algún lugar donde pueda ser accedido por el sistema. En este ejemplo, lo guardaremos en "/usr/local/bin" para que esté disponible para todos los usuarios del sistema:

`sudo nano /usr/local/bin/saludo.sh`

Asegúrate de que el script tenga permisos de ejecución:

`sudo chmod +x /usr/local/bin/saludo.sh`

* Paso 2: Crear el systemd unit

Ahora, crea el systemd unit. Crea un nuevo archivo en el directorio "/etc/systemd/system" con el nombre "saludo.service":

`sudo nano /etc/systemd/system/saludo.service`

Escribe el siguiente contenido en el archivo:
```
[Unit]
Description=Saludo y fecha actual
After=network.target

[Service]
Type=simple
ExecStart=/usr/local/bin/saludo.sh

[Install]
WantedBy=multi-user.target
```

* Paso 3: Cargar y ejecutar el systemd unit

Guarda el archivo y sal del editor de texto.

Luego, carga el nuevo systemd unit:

`sudo systemctl daemon-reload`

Inicia el servicio:

`sudo systemctl start saludo`

Verifica que el servicio esté en ejecución:


`sudo systemctl status saludo`

Se deberia de ver una salida similar a esto:
```
saludo.service - Saludo y fecha actual
   Loaded: loaded (/etc/systemd/system/saludo.service; disabled; vendor preset: enabled)
   Active: active (running) since Tue 2023-03-21 14:30:20 UTC; 3s ago
 Main PID: 1234 (saludo.sh)
    Tasks: 1 (limit: 4915)
   Memory: 1.0M
      CPU: 24ms
   CGroup: /system.slice/saludo.service
           └─1234 /bin/bash /usr/local/bin/saludo.sh

Mar 21 14:30:20 ubuntu systemd[1]: Started Saludo y fecha actual.
Mar 21 14:30:20 ubuntu saludo.sh[1234]: ¡Hola! La fecha actual es Sun Mar 21 14:30:20 UTC 2023.
```

Paso 4: Habilitar el servicio

Si se quiere que el servicio se inicie automáticamente en el arranque del sistema, habilita el servicio:

`sudo systemctl enable saludo`
