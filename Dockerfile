# Use official Node.js 16 base image
FROM node:16

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all application files to container
COPY . .

# Expose port 3000 for access from host
EXPOSE 3000

# Start the Node.js application
CMD ["npm", "start"]

