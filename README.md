# docker-capybara-poltergeist

A docker image containing Ruby, Capybara, Poltergeist, and PhantomJS.

Uses [elsy](https://github.com/cisco/elsy) from Cisco for easy command line building and usage.

# Building

`lc bootstrap`

# Executing

`lc blackbox-test`

# Example output
```
spec/steps/test_steps.rb
exception: false
location : ./spec/features/test.feature:2
descript : Given search google for 'rasp pi 3' -> Then take screenshot -> Then sleep 1
started  : 2017-02-06 03:15:35 +0000
stopped  : 2017-02-06 03:15:37 +0000
W2ZhbHNlLCIuL3NwZWMvZmVhdHVyZXMvdGVzdC5mZWF0dXJlOjIiLCJHaXZl
biBzZWFyY2ggZ29vZ2xlIGZvciAncmFzcCBwaSAzJyAtPiBUaGVuIHRha2Ug
c2NyZWVuc2hvdCAtPiBUaGVuIHNsZWVwIDEiLCIyMDE3LTAyLTA2IDAzOjE1
OjM1ICswMDAwIiwiMjAxNy0wMi0wNiAwMzoxNTozNyArMDAwMCJd
exception: true
location : ./spec/features/test.feature:7
descript : Given search google for 'agent keen' -> Then take screenshot -> Then throw exception -> Then sleep 3
started  : 2017-02-06 03:15:37 +0000
stopped  : 2017-02-06 03:15:38 +0000
W3RydWUsIi4vc3BlYy9mZWF0dXJlcy90ZXN0LmZlYXR1cmU6NyIsIkdpdmVu
IHNlYXJjaCBnb29nbGUgZm9yICdhZ2VudCBrZWVuJyAtPiBUaGVuIHRha2Ug
c2NyZWVuc2hvdCAtPiBUaGVuIHRocm93IGV4Y2VwdGlvbiAtPiBUaGVuIHNs
ZWVwIDMiLCIyMDE3LTAyLTA2IDAzOjE1OjM3ICswMDAwIiwiMjAxNy0wMi0w
NiAwMzoxNTozOCArMDAwMCJd
```
