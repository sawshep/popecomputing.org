FROM ruby:latest
WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y pandoc

WORKDIR /app
RUN gem install sawsge
RUN sawsge

WORKDIR /app/out
RUN gem install webrick
EXPOSE 8080
CMD ["ruby", "-run", "-e", "httpd", ".", "-p", "8080"]
