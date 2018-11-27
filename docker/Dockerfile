FROM debian:9.6

RUN \
		apt update \
	&&	apt upgrade \
	&&	apt install -y --no-install-recommends \
			texlive-full \
			make \
	&&	apt autoremove \
	&&	rm -rf /var/lib/apt/lists/*
