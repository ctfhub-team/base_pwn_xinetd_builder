FROM ctfhub/base_pwn_xinetd_1804

RUN apt-get update -y && \
    apt-get install -y gcc make

WORKDIR /work

COPY start.sh /start.sh
COPY Makefile /work/Makefile


CMD ["sh","/start.sh"]