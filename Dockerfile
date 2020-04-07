FROM node:8
VOLUME /tmp
EXPOSE 8080
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN npm install
ADD sample.war sample.war
CMD [ "npm" , "start"]
COPY . .
