*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed to Checkout
    Click Link  id=hlb-ptc-btn-native