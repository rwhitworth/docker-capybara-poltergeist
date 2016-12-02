FROM ruby:2.2.2

ENV DEBIAN_FRONTEND noninteractive

ENV buildDependencies curl gcc make vim

ENV phantomJSDependencies libfontconfig1 libfreetype6

ENV rubyDependencies libxml2 libxml2-dev

RUN apt-get update -yqq \
    && apt-get install -fyqq ${buildDependencies} ${phantomJSDependencies} ${rubyDependencies} \
    && curl -LO https://s3.amazonaws.com/shortstack-assets/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
    && bzcat phantomjs-2.1.1-linux-x86_64.tar.bz2 | tar xf - \
    && mv phantomjs-2.1.1-linux-x86_64 /opt/phantomjs-2.1.1 \
    && ln -s /opt/phantomjs-2.1.1 /opt/phantomjs \
    && ln -s /opt/phantomjs/bin/phantomjs /usr/local/bin/phantomjs \
    && rm phantomjs-2.1.1-linux-x86_64.tar.bz2 \
    && apt-get autoremove -yqq \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    # Checking if phantom works
    && phantomjs -v

RUN gem update
RUN gem install nokogiri -- --use-system-libraries
RUN gem install capybara
RUN gem install poltergeist
RUN gem install pry
RUN gem install rspec
RUN gem install turnip

COPY spec /root/spec
COPY dot.rspec /root/.rspec
WORKDIR /root

ENTRYPOINT ["rspec", "/root"]
