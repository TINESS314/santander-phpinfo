#FROM nos descargamos un sistema operativo- He instalamos php 
#WORKDIR CREA EL DIRECTORIO DONDE COPIA. 
#COPY RUTA JENKINS(src) Y DESTINO(.) que seria app porque nos hemos posicionado
FROM alpine:latest
RUN apk add php
WORKDIR /app
COPY src .
ENTRYPOINT ["php"]
CMD ["-f","index.php","-S","0.0.0.0:8080"]
