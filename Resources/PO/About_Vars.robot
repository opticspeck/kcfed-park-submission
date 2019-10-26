*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Process

*** Variables ***
${SITE_TITLE} =  Your Site Title
${BUTTON} =  xpath=//a[@href="/volunteer-project"]
*** Keywords ***
Verify Page Loaded
    wait until page contains  ${SITE_TITLE}  ${TIME_OUT}
    wait until page contains element  ${BUTTON}  ${TIME_OUT}