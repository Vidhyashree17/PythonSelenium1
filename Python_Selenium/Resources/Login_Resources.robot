*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://www.demoblaze.com/
${BROWSER}      chrome


*** Keywords ***
Open my Browser
    open browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers


Open Login Page
    go to ${LOGIN URL}

Input username
    [Arguments]     ${username}
    input text      id=loginusername      ${username}

Input pwd
    [Arguments]     ${password}
    input text      id=loginpassword      ${password}

click login link
    click element   id=login2

click login button
    click element       Xpath://button[contains(text(),'Log in')]

click logout link
    click element   Logout

Error message should be visible
    page should contain     Login was unsuccessfull
