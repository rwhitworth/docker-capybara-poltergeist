FROM library/ruby:2.5

ENV DEBIAN_FRONTEND noninteractive

ENV buildDependencies curl gcc make

ENV rubyDependencies libxml2 libxml2-dev

ENV chomeDependencies chromedriver chromium

RUN apt-get update -yqq \
    && apt-get upgrade -y \
    && apt-get install -fyqq ${buildDependencies} ${chomeDependencies} ${rubyDependencies} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem update
RUN gem install nokogiri -- --use-system-libraries
RUN gem install capybara pry rspec turnip
RUN gem install selenium-webdriver chromedriver-helper

COPY dot.rspec /root/.rspec
WORKDIR /root

ENTRYPOINT ["rspec", "/root"]
