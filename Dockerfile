FROM httpd
COPY index.htm /usr/local/apache2/htdocs/index.html
COPY error.htm /usr/local/apache2/htdocs/error.html
COPY style.css /usr/local/apache2/htdocs/style.css
