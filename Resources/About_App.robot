*** Settings ***
Resource  ./PO/About_Vars.robot

*** Variables ***

*** Keywords ***
Verify About Page Generates and Functions Correctly
    About_Vars.Navigate To
    About_Vars.Verify Page Loaded
    About_Vars.Test Newsletter Functionality - Negative Path
    About_Vars.Test Newsletter Functionality - Happy Path