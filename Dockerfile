# Use the official Node.js 22 image based on Alpine Linux 3.20 as the base image
# Alpine is a lightweight image, which helps reduce the overall size of the container
FROM node:22-alpine3.20

# Set the working directory inside the container to /app
# All subsequent commands will be executed in this directory
WORKDIR /app

# Copy only package.json and package-lock.json files to the working directory
# This helps optimize caching for dependency installation
COPY ./package*.json ./

# Install the project dependencies specified in package.json
# Using `npm install` to fetch and set up all required modules
RUN npm install

# Copy the entire project directory from the host machine to the working directory in the container
# This includes source code, configuration files, and any other required resources
COPY . .

# Expose port 5500 for external access
# This makes the application accessible on this port (e.g., for development servers)
EXPOSE 5500

# Define the command to start the application in development mode
# This runs `npm run dev` to launch the development server as defined in the package.json file
CMD ["npm", "run", "dev"]
