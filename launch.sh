#!/usr/bin/env bash
# mounting /root/output from host to container allows for saving of files
# from within container to the host.
# Capybara.save_screenshot('output/test.jpg')

mkdir -p output
docker run -it --rm -v `pwd`/output:/root/output capybara
