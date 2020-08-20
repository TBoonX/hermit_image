FROM mullnerz/jdk6-oracle
LABEL version="0.1"
LABEL maintainer="aksw.org/KurtJunghanns"

RUN mkdir /hermit && cd /hermit && curl https://www.cs.ox.ac.uk/isg/tools/HermiT/download/current/HermiT.zip > hermit.zip && unzip hermit.zip

WORKDIR /hermit

ENTRYPOINT java -jar ./HermiT.jar
