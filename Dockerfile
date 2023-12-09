# Use a base image with Node.js and npm
FROM node

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Expose the development server port (you can change it if needed)
EXPOSE 3000


# Start the development server
CMD ["npm", "run", "dev"]
