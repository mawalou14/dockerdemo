# Stage 1: Build the Angular application
FROM node:16-alpine AS build
WORKDIR /app

# Copy the application source code to the container
COPY . .

# Install dependencies and build the Angular app
RUN npm install
RUN npm run build

# Stage 2: Serve the Angular application using Nginx
FROM nginx:alpine

# Copy the built Angular app from the previous stage
COPY --from=build /app/dist/dockerdemo/ /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
