FROM elixir:1.4

RUN apt-get update
RUN apt-get install -y net-tools less vim

# phoenix
RUN mix local.hex
RUN yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

# node.js
RUN apt-get install -y nodejs npm
RUN npm cache clean
RUN npm install n -g
RUN n stable
RUN ln -sf /usr/local/bin/node /usr/bin/node
RUN ln -sf /usr/local/bin/npm /usr/bin/npm
RUN apt-get remove -y nodejs npm
#RUN curl -0 -L https://npmjs.org/install.sh | sh

EXPOSE 3003
WORKDIR /var/apps/my_first_phoenix
CMD /bin/bash
