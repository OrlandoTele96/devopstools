# Usa la imagen base Alpine
FROM alpine:latest

# Instala los paquetes necesarios
RUN apk --no-cache add mysql-client curl wget openjdk17

ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk

# Establece el cliente de MySQL como comando predeterminado
CMD ["mysql"]
