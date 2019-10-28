*** Settings ***
Resource  ./PO/Contact_Vars.robot

*** Variables ***

*** Keywords ***
Verify Contact Page Generates and Functions Correctly
    Contact_Vars.Navigate To
    Contact_Vars.Verify Page Loaded
    Contact_Vars.Fill Out Contact Form - Negative Path
    Contact_Vars.Fill Out Contact Form - Happy Path