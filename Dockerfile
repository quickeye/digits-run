FROM dwilding/digits
MAINTAINER David Wilding <wilding@gmail.com>

RUN mkdir /DATA && \
	mkdir /DATA/digits && \
	mkdir /DATA/digits/jobs && \
	mkdir /DATA/digits/logs

ADD digits.cfg /home/digits/
EXPOSE 5000

WORKDIR /home/digits
CMD ["python digits-devserver"]
