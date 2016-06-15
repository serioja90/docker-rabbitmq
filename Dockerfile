FROM ubuntu:14.04
MAINTAINER Sergiu Groza <serioja90@gmail.com>

RUN apt-get update && apt-get install -y wget erlang erlang-nox socat
RUN wget https://www.rabbitmq.com/releases/rabbitmq-server/v3.6.2/rabbitmq-server_3.6.2-1_all.deb && dpkg -i rabbitmq-server_3.6.2-1_all.deb && rm rabbitmq-server_3.6.2-1_all.deb
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_stomp rabbitmq_management  rabbitmq_management_agent rabbitmq_management_visualiser rabbitmq_federation rabbitmq_federation_management sockjs

CMD rabbitmq-server
