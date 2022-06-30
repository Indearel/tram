*** Settings ***
Documentation     A test suite for checking tram schedule.
Library           SeleniumLibrary

*** Variables ***
${Twenty_Six}               css:#tram > ul:nth-child(2) > li:nth-child(1) > ul:nth-child(1) > li:nth-child(20) > a:nth-child(1) > span:nth-child(2)
${Direction_Wiatraczna}     css:a.timetable-link:nth-child(2)
${Station_Wola_Ratusz}      css:.timetable-route-street:nth-child(10) .timetable-route-stop:nth-child(3) span
${Number}                   css:.timetable-line-header-summary-details-line > div:nth-child(1) > strong:nth-child(1)
${Cookie_Close}             css:.body > div.page-consent > button

*** Keywords ***
Prepare Env
    Set Selenium Speed    1.2
    Set Screenshot Directory        Screenshots
Start Test
    Log   Test begins.
    Open Browser    https://www.wtp.waw.pl/rozklady-jazdy/     chrome
End Test
    Log     Test ends.
    Close browser

*** Test Cases ***
Opening and checking current weather on the webpage
    Prepare Env
    Start Test
    Click Element   ${Twenty_Six}
    Click Element   ${Direction_Wiatraczna}
    Click Element   ${Cookie_Close}
    Click Element   ${Station_Wola_Ratusz}
    Capture Page Screenshot  TranSchedulerobot.png
    End Test