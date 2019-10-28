*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Process

*** Variables ***
${SERVICES_NAV} =  xpath=//*[@id="topNav"]/nav/ul/li[3]/a
${BATH_LINK} =  xpath=//*[@id="thumb-groom"]
${WALK_LINK} =  xpath=//*[@id="thumb-walk"]
${NAIL_LINK} =  xpath=//*[@id="thumb-nail-trim"]
${BACK_TO_SERVICES_LINK} =  xpath=//*[@id="productNav"]/a
${ADD_TO_CART_BUTTON} =  xpath=//div[@class="sqs-add-to-cart-button-inner"]
${OWNERS_NAME_BOX} =  xpath=//*[@id="text-yui_3_17_2_1_1572115636983_19317-field"]
${DOGS_NAME_BOX} =  xpath=//*[@id="text-yui_3_17_2_1_1572115636983_20198-field"]
${DOG_FRIENDLY_YES} =  xpath=//input[@type="radio"]
${ADDRESS1_BOX} =  xpath=//input[@name="address"]
${ADDRESS2_BOX} =  xpath=//input[@name="address2"]
${CITY_BOX} =  xpath=//input[@name="city"]
${STATE_BOX} =  xpath=//input[@name="state"]
${ZIP_BOX} =  xpath=//input[@name="zipcode"]
${COUNTRY_BOX} =  xpath=//input[@name="country"]
${DATE_MONTH_BOX} =  xpath=//input[@data-title="Month"]
${DATE_DAY_BOX} =  xpath=//input[@data-title="Day"]
${DATE_YEAR_BOX} =  xpath=//input[@data-title="Year"]
${TIME_HOUR_BOX} =  xpath=//input[@data-title="Hour"]
${TIME_MINUTE_BOX} =  xpath=//input[@data-title="Minute"]
${TIME_SECOND_BOX} =  xpath=//input[@data-title="Second"]
${PHONE_AREA_BOX} =  xpath=//input[@data-title="Areacode"]
${PHONE_SECOND_BOX} =  xpath=//input[@data-title="Prefix"]
${PHONE_THIRD_BOX} =  xpath=//input[@data-title="Line"]
${INFO_FORM_ADD_TO_CART_BUTTON} =  xpath=//input[@type="submit"]
${INFO_FORM_ERROR} =  xpath=//div[@class="field-error"]
*** Keywords ***
Navigate To
    wait until page contains element  ${SERVICES_NAV}  ${TIME_OUT}
    click element  ${SERVICES_NAV}

Verify Page Loaded
    wait until page contains element  ${BATH_LINK}  ${TIME_OUT}
    wait until page contains element  ${WALK_LINK}  ${TIME_OUT}
    wait until page contains element  ${NAIL_LINK}  ${TIME_OUT}

Test Checkout Functionality
    click element  ${WALK_LINK}
    wait until page contains  Walk  ${TIME_OUT}
    wait until page contains  15.00  ${TIME_OUT}
    wait until page contains element  ${ADD_TO_CART_BUTTON}  ${TIME_OUT}
    click element  ${ADD_TO_CART_BUTTON}
    # ensuring pop-up form
    ## negative test
    wait until page contains  About Rover  ${TIME_OUT}
    wait until page contains element  ${OWNERS_NAME_BOX}  ${TIME_OUT}
    wait until page contains element  ${DOGS_NAME_BOX}  ${TIME_OUT}
    wait until page contains element  ${DOG_FRIENDLY_YES}  ${TIME_OUT}
    wait until page contains element  ${ADDRESS1_BOX}  ${TIME_OUT}
    wait until page contains element  ${ADDRESS2_BOX}  ${TIME_OUT}
    wait until page contains element  ${CITY_BOX}  ${TIME_OUT}
    wait until page contains element  ${STATE_BOX}  ${TIME_OUT}
    wait until page contains element  ${ZIP_BOX}  ${TIME_OUT}
    wait until page contains element  ${COUNTRY_BOX}  ${TIME_OUT}
    wait until page contains element  ${DATE_MONTH_BOX}  ${TIME_OUT}
    wait until page contains element  ${DATE_DAY_BOX}  ${TIME_OUT}
    wait until page contains element  ${DATE_YEAR_BOX}  ${TIME_OUT}
    wait until page contains element  ${TIME_HOUR_BOX}  ${TIME_OUT}
    wait until page contains element  ${TIME_MINUTE_BOX}  ${TIME_OUT}
    wait until page contains element  ${TIME_SECOND_BOX}  ${TIME_OUT}
    wait until page contains element  ${PHONE_AREA_BOX}  ${TIME_OUT}
    wait until page contains element  ${PHONE_SECOND_BOX}  ${TIME_OUT}
    wait until page contains element  ${PHONE_THIRD_BOX}  ${TIME_OUT}
    wait until page contains element  ${INFO_FORM_ADD_TO_CART_BUTTON}  ${TIME_OUT}
    click element  ${INFO_FORM_ADD_TO_CART_BUTTON}
    wait until page contains element  ${INFO_FORM_ERROR}  ${TIME_OUT}
    ## happy-path test
    input text  ${OWNERS_NAME_BOX}  finny owner
    input text  ${DOGS_NAME_BOX}  finny
    click element  ${DOG_FRIENDLY_YES}
    input text  ${ADDRESS1_BOX}  123 finny ave
    input text  ${ADDRESS2_BOX}  boop boop
    input text  ${CITY_BOX}  doggo
    input text  ${STATE_BOX}  DG
    input text  ${ZIP_BOX}  12345
    input text  ${COUNTRY_BOX}  doggoland
    input text  ${DATE_MONTH_BOX}  1
    input text  ${DATE_DAY_BOX}  1
    input text  ${DATE_YEAR_BOX}  1000
    input text  ${TIME_HOUR_BOX}  1
    input text  ${TIME_MINUTE_BOX}  00
    input text  ${TIME_SECOND_BOX}  00
    input text  ${PHONE_AREA_BOX}  000
    input text  ${PHONE_SECOND_BOX}  000
    input text  ${PHONE_THIRD_BOX}  0000  
    click element  ${INFO_FORM_ADD_TO_CART_BUTTON}
    wait until page contains  Order Summary  ${TIME_OUT}