FROM debian:9.6

RUN \
		apt-get update \
	&&	apt-get upgrade -y \
	&&	apt-get install -y --no-install-recommends \
			texlive-full \
			make \
	&&	apt-get autoremove -y \
	&&	rm -rf /var/lib/apt/lists/*
