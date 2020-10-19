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


Para crear la imagen de la aplicacion se ejecuta el siguiente comando

docker build -t <identificador> <path>   //Para construir una imagen
      docker build -t "mysql_exmp_dock" 
      
Una vez que tenemos ambas imagenes se ligan las imagenes tecleando

docker-compose up -d


Para detener la aplicación   se teclea

docker-compose down


     El  problema con este ejemplo es que una vez que se da de baja la api  se pierden los cambios en la base de datos.
     
     En versiones posteriores se corregira este problema





