*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Process

*** Variables ***
${ABOUT_PAGE_NAV} =  //*[@id="topNav"]/nav/ul/li[2]
${ABOUT_PAGE_TITLE} =  About Us
${NEWSLETTER_BOX} =  //input[@name="email"]
${NEWSLETTER_BUTTON} =  //button[@type="submit"]
${EMAIL_ERROR} =  Email Address is required.
${SUCCESS_MESSGAE} =  Thank you!
*** Keywords ***
Navigate To
    wait until page contains element  ${ABOUT_PAGE_NAV}  ${TIME_OUT}
    click element  ${ABOUT_PAGE_NAV}

Verify Page Loaded
    wait until page contains  ${ABOUT_PAGE_TITLE}  ${TIME_OUT}
    wait until page contains element  ${NEWSLETTER_BOX}  ${TIME_OUT}
    wait until page contains element  ${NEWSLETTER_BUTTON}  ${TIME_OUT}

Test Newsletter Functionality - Negative Path
    click element  ${NEWSLETTER_BOX}
    clear text  ${NEWSLETTER_BOX}
    click element  ${NEWSLETTER_BUTTON}
    wait until page contains  ${EMAIL_ERROR}  ${TIME_OUT}

Test Newsletter Functionality - Happy Path
    click element  ${NEWSLETTER_BOX}
    input text  ${NEWSLETTER_BOX}  dummy@dummy.org
    click button  ${NEWSLETTER_BUTTON}
    wait until page contains  ${SUCCESS_MESSGAE}  ${TIME_OUT}