FROM 	alpine

RUN	apk add libstdc++ libgfortran bash \
&&	apk add build-base gfortran \
&&	cd /tmp \
&&	wget http://www.unafold.org/download/mfold-3.6.tar.gz \
&&	tar xf mfold-3.6.tar.gz \
&&	cd mfold-3.6 \
&&	./configure \
&&	make \
&&	make install \
&&	cd / \
&&	rm -rf /tmp/* \
&&	apk del build-base gfortran

LABEL	tool=mfold version=3.6

WORKDIR	/data
