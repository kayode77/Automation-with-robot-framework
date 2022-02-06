*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
Verify search result
    [Argument]  ${searchtext}
    Input Text   xpath://*[@id="fi-q"]  ${searchtext}
    Press Keys  xpath://*[@id="search"]/button  [Return]
    Page should Contain  Shop Online in Nigeria
    @{WindowHandles}= Get Window Handles
	Sleep  4s
	@{WindowIdentifier}= Get Window Identifiers
	Sleep  4s
	@{WindowNames}= Get Window Names
	Sleep  4s
	@{WindowTitles}= Get Window Titles
	${width}  ${height}-  Get Window Size
    Log  ${width}
    Log  ${heigth}
