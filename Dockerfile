FROM node
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
WORKDIR /app/frontend
RUN npm install
WORKDIR /app
EXPOSE 3000
CMD ["npm","run","dev"] 
