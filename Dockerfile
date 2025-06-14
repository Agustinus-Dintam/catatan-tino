# Gunakan image Nginx
FROM nginx:alpine

# Hapus file default dari nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy index.html ke direktori HTML nginx
COPY index.html /usr/share/nginx/html/index.html

# Buka port 80
EXPOSE 80

# Jalankan nginx
CMD ["nginx", "-g", "daemon off;"]
