*** Settings ***
Documentation  Amazon top navigation
Library  Selenium2Library

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id=twotabsearchtextbox  Ferrari 458

Submit Search
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input