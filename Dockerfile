FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y software-properties-common build-essential cmake git curl ca-certificates libjpeg-dev libpng-dev libgtk2.0-dev freeglut3 freeglut3-dev libxi-dev libxmu-dev
RUN echo "deb http://archive.ubuntu.com/ubuntu/ focal-proposed restricted main multiverse universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python3 python3-setuptools python3-pip
ADD . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN pip3 install Pillow==6.2.2

CMD python3 test.py --trained_model=craft_mlt_25k.pth --test_folder=test_images --cuda=false

VOLUME /app/result