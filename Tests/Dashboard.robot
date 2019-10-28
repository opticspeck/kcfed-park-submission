*** Settings ***
Resource  ../Resources/About_App.robot
Resource  ../Resources/Contact_App.robot
Resource  ../Resources/Home_App.robot
Resource  ../Resources/Services_App.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test
*** Test Cases ***
Home Page Loads and Is Functional
    [Tags]  Home  BVT
    Home_App.Verify Home Page Generates and Functions Correctly
    CommonWeb.Screenshot  Home.Home_Page_Loads_and_is_Functional

About Page Loads and Is Functional
    [Tags]  About  BVT
    About_App.Verify About Page Generates and Functions Correctly
    CommonWeb.Screenshot  About.About_Page_Loads_and_is_Functional

Contact Page Loads and Is Functional
    [Tags]  Contact  BVT
    Contact_App.Verify Contact Page Generates and Functions Correctly
    CommonWeb.Screenshot  Contact.Contact_Page_Loads_and_is_Functional

Services Page Loads and Is Functional
    [Tags]  Services  BVT
    Services_App.Verify Services Page Generates and Functions Correctly
    CommonWeb.Screenshot  Services.Services_Page_Loads_and_is_Functional