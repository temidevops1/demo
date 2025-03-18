# Use the official Node.js 18 image
FROM node:18 AS build

# Set the working directory inside the container to public-health-tracker
WORKDIR /app/public-health-tracker

# Ensure npm is installed and updated
RUN npm install -g npm@10

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies using npm ci for a clean install
RUN npm ci --legacy-peer-deps

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Use Nginx to serve the static files
FROM nginx:alpine

# Create a non-root user and group
RUN addgroup -S app && adduser -S app -G app

# Set the working directory to the Nginx HTML directory
WORKDIR /usr/share/nginx/html

# Copy the build output to replace the default Nginx contents
COPY --from=build /app/public-health-tracker/build .

# Change ownership of the files to the app user
RUN chown -R app:app /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx as the app user
USER app
CMD ["nginx", "-g", "daemon off;"]