FROM ubuntu

RUN apt update && apt install -y nginx

ENV DEVOPS="Exadel Intern"

COPY . .
RUN bash script.sh
