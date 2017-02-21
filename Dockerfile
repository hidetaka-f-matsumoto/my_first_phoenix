FROM elixir:1.4

RUN apt-get update
RUN apt-get install -y net-tools less vim postgresql-9.4

# postgresql
RUN echo "host    phoenix   phoenix   127.0.0.1/32    md5" >> /etc/postgresql/9.4/main/pg_hba.conf
RUN echo "host    phoenix   phoenix   ::1/128         md5" >> /etc/postgresql/9.4/main/pg_hba.conf
USER postgres
RUN createuser phoenix
RUN psql -c "ALTER USER \"phoenix\" WITH PASSWORD 'phoenix';"
RUN createdb -O phoenix phoenix
USER root

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
