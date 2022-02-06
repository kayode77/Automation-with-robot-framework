*** Settings ***
Documentation  Testing for web browser
Library  SeleniumLibrary
Resource  ../Resources/Mydefinedkeywords.robot
Resource  ../Resources/Myverificationdefinedkeywords.robot
Test Setup  Mydefinedkeywords.Start Testcase
Test Teardown  Mydefinedkeywords.Stop Testcase
*** Variables ***
*** Test Cases ***
Opening a Jumia browser on food
    [documentation]  Opening of Jumia Nigeria
    [Tags]  functional
    Myverificationdefinedkeywords.Verify search result  food

Opening a Jumia browser on computer
    [documentation]  Opening of Jumia Nigeria
    [Tags]  functional
    Myverificationdefinedkeywords.Verify search result  computer

Opening a Jumia browser on cloth
    [documentation]  Opening of Jumia Nigeria
    [Tags]  functional
    Myverificationdefinedkeywords.Verify search result  cloth
