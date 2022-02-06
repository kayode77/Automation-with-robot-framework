*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Opening jumia browser
    [documentation]  Google Test
    [Tags]  functional
    Open Browser  https://www.jumia.com.ng/  chrome
    Maximize Browser Window
    Close Browser

*** Keywords ***