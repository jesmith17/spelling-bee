FROM ruby:2.4.2
RUN mkdir /usr/src/app 
ADD . /usr/src/app/ 
WORKDIR /usr/src/app/

RUN  bundle install

EXPOSE 3000

CMD ["rails","server", "-b", "0.0.0.0", "-p", "3000"]