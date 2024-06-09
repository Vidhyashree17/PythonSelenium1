*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Suite Setup     Open Browser
Suite Teardown  Close Browsers
Test Template   Invalid login

*** Test Cases ***      username        password
Right user empty pass       vidhyashreesm05@gmail.com       ${Empty}
Right user wrong pass       vidhyasm0517@gmail.com      xyz
wrong user right pass       vidhyhreesm05@gmail.com     Vidhya123
wrong user empty pass       vidhyhreesm05@gmail.com     ${Empty}


*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    click login link
    Input username  ${username}
    Input pwd   ${password}
    click login button
    Error message should be visible
