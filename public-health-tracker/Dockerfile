# 🌟 Build Stage - Node.js to build static files
FROM node:16 AS build

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --frozen-lockfile

# Copy the rest of the code and build
COPY . .
RUN npm run build

# 🌟 Serve with Nginx
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy built app from Node.js stage
COPY --from=build /app/build .

# ✅ Fix the COPY command (Ensure nginx.conf exists in the project directory)
COPY ./nginx.conf /etc/nginx/nginx.conf

# Fix permission issue causing "mkdir() failed (13: Permission denied)"
RUN mkdir -p /var/cache/nginx/client_temp \
    && chmod -R 777 /var/cache/nginx

# Expose port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
