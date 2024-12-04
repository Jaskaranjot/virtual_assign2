# Use the official Node.js image
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Copy and install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Expose the app's port
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]
