# Gunakan Nginx Alpine sebagai base
FROM nginx:alpine

# Hapus default index.html (jika ada)
RUN rm /usr/share/nginx/html/index.html

# Salin index.html kita ke dalam container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
