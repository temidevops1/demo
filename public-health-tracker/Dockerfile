# Use the official Node.js 18 image
FROM node:18 AS build

# Set the working directory inside the container to `public-health-tracker`
WORKDIR /app/public-health-tracker

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

# Copy the build output to replace the default Nginx contents
COPY --from=build /app/public-health-tracker/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]