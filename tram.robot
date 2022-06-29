*** Settings ***
Documentation     A test suite for checking tram schedule.
Library           SeleniumLibrary

*** Variables ***


*** Keywords ***
Prepare Env
    Set Selenium Speed    1.2
    Set Screenshot Directory        Screenshots
Start Test
    Log   Test begins.
    Open Browser    https://www.wtp.waw.pl     chrome
End Test
    Log     Test ends.
    Close browser

*** Test Cases ***
Opening and checking current weather on the webpage
    Prepare Env
    Start Test
    End Test