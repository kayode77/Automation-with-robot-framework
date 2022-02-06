*** Settings ***
Documentation  openning of different web browsers
Library  SeleniumLibrary
*** Variables ***
@{searchwebsite}  https://www.jumia.com  https://www.konga.com
${browser}  chrome
*** Test Cases ***
Opening a browser
    [documentation]  opening of multiple url
    [Tags]  Browsers
    Open Browser  ${searchwebsite}[0]  ${browser}
    Maximize Browser Window
    Close Browser
*** Keywords ***
