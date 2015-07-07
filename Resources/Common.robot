*** Settings ***
Library  Selenium2Library
Library  Saucelabs

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
    # Maximize Browser Window

End Web Test
    #This line updates the test case name, result and tags in the SauceLabs UI
    #after the test case has completed, but before closing the browser
    #http://datakurre.pandala.org/2014/03/cross-browser-selenium-testing-with.html
    Run keyword if  '${REMOTE_URL}' != ''
    ...  Update Saucelabs Test Result
    ...  ${SUITE_NAME}: ${TEST_NAME}
    ...  ${TEST_STATUS}  ${TEST_TAGS}  ${REMOTE_URL}
    Close Browser