#!/usr/bin/env bash
# mounting /root/ from host to container allows for saving of files
# from within container to the host.
# Capybara.save_screenshot('test.jpg')
docker run -it --rm -v `pwd`:/root/ capybara
