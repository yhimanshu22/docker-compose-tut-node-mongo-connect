# Use the official Node.js image from the Docker Hub
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Copy environment variables file
COPY .env .env

# Expose port 3000
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]
