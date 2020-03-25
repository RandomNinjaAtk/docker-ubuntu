FROM lsiobase/ubuntu:bionic
LABEL maintainer="RandomNinjaAtk"

RUN \
	# install dependancies
	curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
	apt-get update -qq && \
	apt-get install -qq -y \
		mp3val \
		flac \
		wget \
		nano \
		unzip \
		nodejs \
		git \
		jq \
		opus-tools \
		libchromaprint-tools \
		python3-pip \
		cron && \
	apt-get purge --auto-remove -y && \
	apt-get clean && \
	# Install beets
	pip3 install --no-cache-dir -U \
		beets \
		pyacoustid
