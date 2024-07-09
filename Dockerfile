FROM ubuntu:latest
RUN apt -y update && apt -y upgrade
RUN apt-get install -y curl 
RUN curl https://sh.rustup.rs -y -sSf | sh
RUN source "$HOME/.cargo/env"
RUN . "$HOME/.cargo/env"
RUN apt install -y build-essential
RUN cargo install bore-cli
RUN bore server --min-port 8080 --max-port 8080
EXPOSE 7385 8080