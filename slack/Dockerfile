FROM jess/slack:latest

RUN apt-get update && apt-get -y install \
	firefox-esr \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN useradd -rm -d /home/oleg -s /bin/bash -u 1000 oleg
USER 1000:997

ENTRYPOINT ["/usr/lib/slack/slack"]
