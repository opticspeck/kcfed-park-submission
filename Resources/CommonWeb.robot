*** Settings ***
Library  Selenium2Library
Library  BuiltIn
Library  RequestsLibrary
Library  Collections
Documentation  This Page Object represents the Common Objects for GUI Automation in the Dashboard

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://dandelion-buffalo-2yn8.squarespace.com
${ENVIRONMENT} =
${PASSWORD_BOX} =  xpath=//input[@type="password"]
${TIME_OUT} =  30
${PASSWORD_ENTER_BUTTON} =  xpath=//div[@class="icon-wrapper arrow"]
*** Keywords ***
Begin Web Test
    open browser  ${URL}  ${BROWSER}
    maximize browser window
    # bypassing the password screen
    wait until page contains element  ${PASSWORD_BOX}  ${TIME_OUT}
    wait until page contains element  ${PASSWORD_ENTER_BUTTON}  ${TIME_OUT}
    click element  ${PASSWORD_BOX}
    input text  ${PASSWORD_BOX}  password
    # ascii code for the enter key
    press key  ${PASSWORD_BOX}  \\13
    # click element  ${PASSWORD_ENTER_BUTTON}

End Web Test
    close all browsers

Screenshot
    [Arguments]  ${MARKER}
    # capture page screenshot  filename=Screenshots/${MARKER}${ENVIRONMENT}-{index}.png
    capture page screenshot  filename=Screenshots/${MARKER}-{index}.png

Clear Text
    [Arguments]  ${field_locator}
    ${value}=     Get Element Attribute   ${field_Locator}      value
    ${backspaces count}=    Get Length      ${value}
    Run Keyword If    """${value}""" != ''    # if there's no current value - no need to slow down by an extra SE call
    ...     Repeat Keyword  ${backspaces count}  Press Key  ${field_Locator}   \\08    # this is the code for the backspace key; "backspaces count +1" - just too be sure :)
