*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Process

*** Variables ***
${HOME_PAGE_TITLE} =  Convenient Dog Services
${TWITTER_FEED} =  //div[@class="tweet-from"]
${PDF_DOWNLOAD_BUTTON} =  //a[@href="/s/rovingroger.pdf"]
${PDF_HEADER} =  Donec a urna pharetra, sagittis turpis eu, dignissim augue
*** Keywords ***
Verify Page Loaded
    wait until page contains  ${HOME_PAGE_TITLE}  ${TIME_OUT}
    wait until page contains element  ${TWITTER_FEED}  ${TIME_OUT}
    wait until page contains element  ${PDF_DOWNLOAD_BUTTON}  ${TIME_OUT}

Test Flyer Button Functionality
    click element  ${PDF_DOWNLOAD_BUTTON}
    wait until page contains  Donec  ${TIME_OUT}
