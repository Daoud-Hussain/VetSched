# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index page
RUN rm -rf ./*

# Copy all the content of the current directory (your HTML and assets) to the container
COPY . .

# Expose port 80 to make the web application accessible
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
