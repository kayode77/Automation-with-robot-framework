*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.jumia.com.ng/
*** Test Cases ***
Opening a Jumia browser
    [documentation]  Opening of Jumia and Konga
    [Tags]  functional
    Set Selenium Speed  3s
    Set Selenium Timeout  7s
    Open Browser  ${url}  ${browser}  alias=ChromeRCV
    Maximize Browser window
    Input Text   xpath://*[@id="fi-q"]  food
    Press Keys  xpath://*[@id="search"]/button  [Return]
    Page should Contain  Shop Online in Nigeria

    Go To  https://www.konga.com
    ${attr}=  Get Element Attribute  xpath://*[@id="jsSearchInput"]  shoe
	${count}=  Get Element Count  xpath://*[@id="jsSearchInput"]
	${width}  ${height}=  Get Element size  xpath://*[@id="jsSearchInput"]
	Get WebElement  xpath://*[@id="jsSearchInput"]
	@{webelement}=  Get webElement  xpath://*[@id="jsSearchInput"]
	Capture Element Screenshot  xpath://*[@id="jsSearchInput"]
	Input Text  xpath://*[@id="jsSearchInput"]  shoe
    Click Button  xpath://*[@id="nav-bar-fix"]/div[1]/div/div/div[2]/div/form/button
    ${default_selenium_speed}=  Get Selenium Speed
    ${default_selenium_timeout}=  Get Selenium Timeout
    Close Browser
*** Keywords ***

