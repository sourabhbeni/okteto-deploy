FROM anasty17/mltb:latest

WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y;apt-get install -y figlet unzip toilet apt-utils sudo wget
RUN cd /usr/share/figlet;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/font.flf

RUN chmod 777 /maruf

#FROM theteamultroid/ultroid:main
RUN sh -c "$(curl -fsSl https://raw.githubusercontent.com/Yourusername/reponame/main/reqv.sh)"
