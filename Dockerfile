#WORKDIR CREA EL DIRECTORIO DONDE COPIA. COPY EL . ES EL DESTINO
WORKDIR /app
COPY src .
ENTRYPOINT ["php"]
CMD ["-f","index.php","-S","0.0.0.0:8080"]
