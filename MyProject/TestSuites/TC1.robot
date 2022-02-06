*** Settings ***
Library  SeleniumLibrary
Libr
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.jumia.com.ng/
*** Test Cases ***
Opening a Jumia browser
    [documentation]  Opening of Jumia Nigeria
    [Tags]  functional
    Set Selenium Speed  3s
    Set Selenium Timeout  7s
    Start Testcase
    Verify search result
    Stop Testcase
*** Keywords ***
Start Testcase
    Open Browser  ${url}  ${browser}
    Maximize Browser window
Verify search result
    Input Text   xpath://*[@id="fi-q"]  food
    Press Keys  xpath://*[@id="search"]/button  [Return]
    Page should Contain  Shop Online in Nigeria
Stop Testcase
    Close Browser
