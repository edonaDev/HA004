FROM node:10

# Krijo follderin e aplikacionit
WORKDIR /usr/src/app

# Instaloni varesite e aplikacionit
# Ne do te kopjojme package.json nga follderi jone lokal ne imazh

COPY package*.json ./

RUN npm install

# Bashko kodin burimor te aplikacionit


COPY . .
EXPOSE 8080
CMD ["node", "server.js"]
