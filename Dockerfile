# Use Node.js Alpine image for smaller size
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose port 8080
EXPOSE 8080

# Start live-server with hot reloading
CMD ["npm", "start"]
