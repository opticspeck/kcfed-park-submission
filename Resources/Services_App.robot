*** Settings ***
Resource  ./PO/Services_Vars.robot

*** Variables ***

*** Keywords ***
Verify Services Page Generates and Functions Correctly
    Services_Vars.Navigate To
    Services_Vars.Verify Page Loaded
    Services_Vars.Test Checkout Functionality