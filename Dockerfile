# Dockerfile
FROM i386/php:5.6-apache

# เปิด mod_rewrite
RUN a2enmod rewrite

# คัดลอก source code ไปที่ Apache root
COPY ./app /var/www/html/

# เปลี่ยนสิทธิ์เพื่อให้ Apache เขียนได้
RUN chown -R www-data:www-data /var/www/html

# ตั้งค่า working directory
WORKDIR /var/www/html