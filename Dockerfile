FROM ubuntu

RUN apt-get update && \
		apt-get -y install build-essential git libncursesw5 libncursesw5-dev

RUN git clone https://github.com/visit1985/mdp.git && \
		cd mdp && \
		make && \
		make install

ENV TERM=xterm-256color

RUN locale-gen en_US.UTF-8 && \
		update-locale LANG=en_US.UTF-8

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

