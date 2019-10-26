*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Process

*** Variables ***
${SITE_TITLE} =  Your Site Title
*** Keywords ***
Verify Page Loaded
    wait until page contains  ${SITE_TITLE}  ${TIME_OUT}