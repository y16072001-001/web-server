FROM nginx:1.10.1-alpine
RUN adduser --gecos "" --disabled-password --quiet jenkins
RUN echo "jenkins:jenkins" | chpasswd
RUN chown jenkins:jenkins /home/jenkins
COPY index.html /usr/share/nginx/html
EXPOSE 9999
CMD ["nginx", "-g", "daemon off;"]
