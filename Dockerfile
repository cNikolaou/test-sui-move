FROM node:20.14-bookworm

RUN apt update && apt install -y \
    build-essential \
    libc6 \
    libstdc++6

RUN wget https://github.com/MystenLabs/sui/releases/download/mainnet-v1.23.1/sui-mainnet-v1.23.1-ubuntu-x86_64.tgz
RUN tar -xzvf sui-mainnet-v1.23.1-ubuntu-x86_64.tgz -C /usr/local/bin/

COPY ./entrypoint.sh ./entrypoint.sh

CMD [ "/entrypoint.sh" ]
