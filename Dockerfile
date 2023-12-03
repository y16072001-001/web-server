FROM nginx:1.10.1-alpine
USER root
COPY index.html /usr/share/nginx/html
EXPOSE 9999
CMD ["nginx", "-g", "daemon off;"]
