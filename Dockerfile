FROM java:openjdk-8-alpine

# install package
RUN apk add --update curl

# install digdag
RUN curl -o /usr/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest"
RUN chmod +x /usr/bin/digdag

# Port
EXPOSE 8080

# start
ADD start-digdag.sh /usr/bin/start-digdag.sh
CMD ["/usr/bin/start-digdag.sh"]
