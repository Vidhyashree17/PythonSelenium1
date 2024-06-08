*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.demoblaze.com/

*** Test Cases ***
LoginTest
    open browser        ${url}  ${browser}
    sleep       2s
    click link       //a[@id='signin2']
    sleep       2s
    maximize browser window
    sleep       2s
    input text      id=sign-username        vidhyasm051
    sleep       2s
    input text      id=sign-password        Vidhyasm17
    sleep       2s
    click element       //button[contains(text(),'Sign up')]
    #for verification unable to inspect popup message( This user already exist)
    close browser
