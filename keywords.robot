*** Variables ***
${Firefox_Browser}          firefox
${Chrome_Browser}           chrome
${Schedule_Site}            https://www.wtp.waw.pl/rozklady-jazdy/
${Twenty_Six}               css:#tram > ul:nth-child(2) > li:nth-child(1) > ul:nth-child(1) > li:nth-child(20) > a:nth-child(1) > span:nth-child(2)
${Direction_Wiatraczna}     css:a.timetable-link:nth-child(2)
${Station_Wola_Ratusz}      css:.timetable-route-street:nth-child(10) .timetable-route-stop:nth-child(3) span
${Number}                   css:.timetable-line-header-summary-details-line > div:nth-child(1) > strong:nth-child(1)
${Cookie_Close}             css:.page-consent-button
${Tram_Now}                 css:.now-0
${Timetable_Now}            css:.timetable-route-point time

*** Keywords ***
Prepare Env
    Set Selenium Speed    1.2
    Set Screenshot Directory        Screenshots
Start Test
    Log   Test begins.
    Open Browser    ${Schedule_Site}      ${Chrome_Browser}
Next Tram Time
    ${Tram_now}     Get Value
    Click Element   ${Tram_now}
Tram Time
    Log   The next tram will arrive at
End Test
    Log     Test ends.
    Close browser
