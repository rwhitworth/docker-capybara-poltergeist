Feature: test feature
Scenario: test01
  Given search google for 'rasp pi 3'
  Then take screenshot
  Then sleep 1

Scenario: test02
  Given search google for 'agent keen'
  Then take screenshot
  Then throw exception
  Then sleep 3
