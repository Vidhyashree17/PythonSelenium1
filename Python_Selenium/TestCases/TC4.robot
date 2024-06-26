*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.demoblaze.com/

*** Test Cases ***
LoginTest
    open browser        ${url}  ${browser}
    sleep       2s
    click link       Xpath://a[@id='login2']
    sleep       2s
    maximize browser window
    sleep       2s
    input text      id=loginusername        vidhyashreesm05@gmail.com
    sleep       2s
    input text      id=loginpassword        Vidhya12
    sleep       2s
    click element       Xpath://button[contains(text(),'Log in')]
    sleep       2s
    #for verification unable to inspect for both popup messages(user does'nt exist and wrong password)
    close browser