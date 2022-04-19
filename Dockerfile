FROM nginx:latest
WORKDIR /usr/share/nginx/html
RUN rm -f index.html
RUN touch index.html
RUN echo "Development Web Server" >> ./index.html
WORKDIR /root/
RUN apt-get update -y
RUN apt-get install vim -y
RUN apt-get upgrade -y

