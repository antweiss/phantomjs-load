@javascript
Feature: Google News Example
  As a user
  I view google news sports
  so that I get the latest chisme
Scenario: Google news sports
  Given I visit "http://news.google.com"
  When I click "Sports"
  Then I should see "Sports scores"
