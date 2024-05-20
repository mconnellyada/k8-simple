FROM nginx:latest

COPY /app /usr/share/nginx/html

EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]