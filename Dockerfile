# Imagen base de Node.js
FROM node:18-alpine

# Directorio de trabajo en el contenedor
WORKDIR /app

# Copiar archivos de dependencias
COPY package.json package-lock.json ./

# Instalar dependencias
RUN npm install

# Copiar todos los archivos
COPY . .

# Exponer el puerto de Vite
EXPOSE 5173

# Comando para iniciar Vue en modo desarrollo
CMD ["npm", "run", "dev", "--", "--host"]
