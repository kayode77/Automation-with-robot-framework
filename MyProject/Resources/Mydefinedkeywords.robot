*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.jumia.com.ng/
*** Keywords ***
Start Testcase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
Stop Testcase
    Close Browser
