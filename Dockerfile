FROM php:7.4-apache

# Cài đặt các module cần thiết
RUN docker-php-ext-install mysqli

# Copy mã nguồn PHP vào container
COPY src/ /var/www/html/

# Đảm bảo quyền truy cập
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 (port mặc định của Apache)
EXPOSE 80
