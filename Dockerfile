# ===== Dockerfile (edit this in your repo) =====

# 1) Mulai dari base image Nginx Alpine
FROM nginx:alpine

# 2) Hapus default index.html (pakai -f supaya tidak error jika tidak ada)
RUN rm -f /usr/share/nginx/html/index.html

# 3) Salin index.html dari repo ke container
#    Pastikan di repo Anda ada file ‘index.html’ di root
COPY index.html /usr/share/nginx/html/index.html

# 4) Expose port 80 agar container bisa diakses
EXPOSE 80

# 5) Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
