# Base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy files
COPY package*.json ./
RUN npm install

COPY . .

# Expose port
EXPOSE 3000

# Command to run the app
CMD [ "npm", "start" ]
