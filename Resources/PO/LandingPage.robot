*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Load
    Go To  http://www.amazon.com

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com