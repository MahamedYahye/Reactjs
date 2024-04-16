# Gebruik een bestaande Docker image als basis
FROM node:16-alpine

# Stel de werkdirectory in binnen de container
WORKDIR /app

# Kopieer package.json en package-lock.json voor dependencies
COPY package*.json ./

# Installeer project dependencies
RUN npm install

# Kopieer de rest van de code
COPY . .

# Bouw het project
RUN npm run build

# Expose de poort waarop de app draait
EXPOSE 3000

# Start de app
CMD ["npm", "start"]
