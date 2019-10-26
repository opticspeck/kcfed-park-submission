*** Settings ***
Resource  ../Resources/About_App.robot
Resource  ../Resources/Contact_App.robot
Resource  ../Resources/Home_App.robot
Resource  ../Resources/Services_App.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test
*** Test Cases ***
About Page Loads and Is Functional
    [Tags]  About  BVT
    About_App.Verify About Page Generates and Functions Correctly
    CommonWeb.Screenshot  About.About_Page_Loads_and_is_Functional
