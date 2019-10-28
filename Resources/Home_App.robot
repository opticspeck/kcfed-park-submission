*** Settings ***
Resource  ./PO/Home_Vars.robot

*** Variables ***

*** Keywords ***
Verify Home Page Generates and Functions Correctly
    Home_Vars.Verify Page Loaded
    Home_Vars.Test Flyer Button Functionality