# Use the official Node.js image as the base image
FROM node:lts

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

# Expose port 5000 to the outside world (adjust if needed)
EXPOSE 9000

# Command to run your application
CMD ["npm", "start"]