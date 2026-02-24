FROM codercom/code-server:latest

USER root

RUN apt-get update && apt-get install -y git nodejs npm python3

USER coder

EXPOSE 8080

CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "password"]
