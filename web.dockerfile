FROM httpd

RUN apt update

RUN apt install curl nano -y