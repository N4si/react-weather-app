# Use the official Node.js image with React as the base image
FROM node:14 AS react-app

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Start the React app
CMD ["npm", "start"]
