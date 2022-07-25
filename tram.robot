*** Settings ***
Documentation     A test suite for checking tram schedule.
Library           SeleniumLibrary
Resource          keywords.robot

*** Test Cases ***
Opening and checking current weather on the webpage
    Prepare Env
    Start Test
    Click Element   ${Cookie_Close}
    Click Element   ${Twenty_Six}
    Click Element   ${Direction_Wiatraczna}
    Click Element   ${Station_Wola_Ratusz}
    Maximize Browser Window
    Scroll Element Into View   ${Tram_Now}
    Capture Page Screenshot  Tram_Schedule_Robot.png
    End Test