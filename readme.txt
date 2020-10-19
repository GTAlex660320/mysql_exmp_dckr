/****   EJEMPLO CONECTAR  MYSQL  con PHPADMIN

Hacemos el pull de la base de datos y construimos el contenedor
docker run --name mysqlEngine -e MYSQL_ROOT_PASSWORD=admin -d mysql:5.6


Hacemos el pull de la base de datos y construimos el contenedor
docker run --name mysqlEngine -e MYSQL_ROOT_PASSWORD=admin -d mysql:5.6

Copiamos el script de la base de datos
docker cp BaseDatos.sql mysqlEngine:/tmp

Ingresamos al contenedor
docker exec -it mysqlEngine bash
    -- probamos entrar a la consola de mysql

      #cd /usr/bin
      #mysql -u root -p
            -- pasword => admin

    -- si responde con mysql>    es que se pudo conectar.
 
    -- Salimos de la consola de mysql tecleando "exit" y corremos el comando de creacion de la base de datos

    # cd /tmp
    # /usr/bin/mysql --user=root --password=admin --database=mysql < BaseDatos.sql

    --  Si no marca errores entonce ya tenemos la base de datos...
    --  El contenedor de mySql  esta listo



/********oTro

Configurar MySQL para que escuche conexiones desde todas las IP
Por defecto MySQL viene configurado para escuchar sólo conexiones locales. Podemos ejecutar el siguiente comando para ver nuestra configuración actual:

1.   SHOW GLOBAL VARIABLES LIKE 'bind_address'
Por defecto, debería retornar 127.0.0.1 y necesitamos cambiar ese valor a 0.0.0.0. Con eso le damos acceso a cualquier IP para acceder al servicio.

El cambio debe realizarse en el archivo de configuración de MySQL: my.cnf. La ubicación de este archivo puede variar dependiendo del sistema operativo.

GRANT ALL PRIVILEGES ON democreds.* TO 'credusr'@'%' IDENTIFIED BY 'secret'






