FROM node:18-alpine  # Ensure compatibility with your dependencies
WORKDIR /app

# Set environment variable to avoid unnecessary logs
ENV NODE_ENV=production

# Copy package files first to leverage Docker cache
COPY package.json package-lock.json ./

# Ensure clean installation
RUN npm ci --only=production || npm install --only=production

# Copy the rest of the project files
COPY . .

# Expose the port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
