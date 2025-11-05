# Use a lightweight Node.js image
FROM node:current-alpine3.21

# Set working directory
WORKDIR /app

# Copy package files first and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose port
EXPOSE 3700

# Start the app
CMD ["node", "index.js"]
