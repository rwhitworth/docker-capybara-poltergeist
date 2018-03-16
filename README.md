# docker-capybara-poltergeist

A docker image containing Ruby, Capybara, Selenium, and Chromium

Uses [elsy](https://github.com/cisco/elsy) from Cisco for easy command line building and usage.

# Building

`lc bootstrap`

# Executing

`lc blackbox-test`

# Note
This repo previously used PhantomJS and Poltergeist for browser emulation.
The last release of PhantomJS was in 2016.  Many third party libraries are statically compiled
into the PhantomJS binary and those libraries contain many security vulnerabilities.  Given
the current lack of development of PhantomJS this repo has switched to the headless
Chromium browser as its browser of choice.
