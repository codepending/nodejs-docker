FROM fedora
MAINTAINER Curtis Mitchell

RUN dnf update -y &&  dnf clean all

RUN \
  dnf install -y wget tar && \
  wget -O - https://nodejs.org/dist/latest/node-v4.1.0-linux-x64.tar.gz \
  | tar xzf - --strip-components=1 --exclude="README.md" --exclude="LICENSE" \
  --exclude="ChangeLog" -C "/usr/local"

RUN mkdir /src
WORKDIR /src

ADD . /src
RUN npm install
