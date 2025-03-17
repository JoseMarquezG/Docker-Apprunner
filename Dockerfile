# Usa una imagen base de Node.js
FROM node

WORKDIR /app
# Copia los archivos de tu aplicación al contenedor
COPY . .

RUN npm install

EXPOSE 7000

# Ejecuta la app, lanzando el archivo www
ENTRYPOINT ["node","/app/bin/www"]



