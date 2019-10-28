*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Process

*** Variables ***
${CONTACT_PAGE_NAV} =  //*[@id="topNav"]/nav/ul/li[4]/a
${CONTACT_PAGE_TITLE} =  Feel free to contact us with any comments, questions, or concerns.
${CONTACT_FIRST_NAME_BOX} =  xpath=//input[@name="fname"]
${CONTACT_LAST_NAME_BOX} =  xpath=//input[@name="lname"]
${CONTACT_EMAIL_BOX} =  xpath=//input[@name="email"]
${CONTACT_SUBJECT_BOX} =  xpath=//*[@id="text-yui_3_17_2_1_1572212062095_3962-field"]
${CONTACT_MESSAGE_BOX} =  xpath=//*[@id="textarea-yui_3_17_2_1_1572212062095_3963-field"]
${CONTACT_BUTTON} =  xpath=//input[@type="submit"]
${CONTACT_FORM_ERROR} =  xpath=//div[@class="field-error"]
*** Keywords ***
Navigate To
    wait until page contains element  ${CONTACT_PAGE_NAV}  ${TIME_OUT}
    click element  ${CONTACT_PAGE_NAV}

Verify Page Loaded
    wait until page contains  ${CONTACT_PAGE_TITLE}  ${TIME_OUT}
    wait until page contains element  ${CONTACT_FIRST_NAME_BOX}  ${TIME_OUT}
    wait until page contains element  ${CONTACT_LAST_NAME_BOX}  ${TIME_OUT}
    wait until page contains element  ${CONTACT_EMAIL_BOX}  ${TIME_OUT}
    wait until page contains element  ${CONTACT_SUBJECT_BOX}  ${TIME_OUT}
    wait until page contains element  ${CONTACT_MESSAGE_BOX}  ${TIME_OUT}
    wait until page contains element  ${CONTACT_BUTTON}  ${TIME_OUT}

Fill Out Contact Form - Negative Path
    clear text  ${CONTACT_FIRST_NAME_BOX}
    clear text  ${CONTACT_LAST_NAME_BOX}
    clear text  ${CONTACT_EMAIL_BOX}
    clear text  ${CONTACT_SUBJECT_BOX}
    clear text  ${CONTACT_MESSAGE_BOX}
    click button  ${CONTACT_BUTTON}
    wait until page contains element  ${CONTACT_FORM_ERROR}  ${TIME_OUT}

Fill Out Contact Form - Happy Path
    input text  ${CONTACT_FIRST_NAME_BOX}  finny
    input text  ${CONTACT_LAST_NAME_BOX}  dog
    input text  ${CONTACT_EMAIL_BOX}  dummy@dummy.org
    input text  ${CONTACT_SUBJECT_BOX}  dog msg
    input text  ${CONTACT_MESSAGE_BOX}  v important pls read asap
    click button  ${CONTACT_BUTTON}
    wait until page contains  ${SUCCESS_MESSGAE}