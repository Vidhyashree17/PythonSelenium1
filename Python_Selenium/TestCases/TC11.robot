*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Login_Resources.robot
Library     DataDriver  ../TestData/LoginData.xlsx      sheet_name=Sheet1

Suite Setup     Open my Browser
Suite Teardown      Close Browsers
Test Template       LoginTestwithExcel

*** Test Cases ***
LoginTestwithExcel  using   ${username} and ${password}

*** Keywords ***
Valid login
    [Arguments]     ${username}     ${password}
    Input username  ${username}
    Input pwd   ${password}
    click login button