FROM nginx:1.10.1-alpine
RUN mkdir -p /newfolder
RUN chown newuser /newfolder
USER newuser
WORKDIR /newfolder
COPY index.html /usr/share/nginx/html
EXPOSE 9999
CMD ["nginx", "-g", "daemon off;"]
