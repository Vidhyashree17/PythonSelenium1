*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.demoblaze.com/

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
    input text      id=loginpassword        Vidhya123
    sleep       2s
    click element       Xpath://button[contains(text(),'Log in')]
    sleep       2s
    click element       //a[contains(text(),'Phones')]
    sleep       2s
    click element       //button[@id='next2']
    sleep       2s
    click element       //a[contains(text(),'MacBook Pro')]
    sleep       2s
    # for verify
    click element       //a[contains(text(),'Cart')]
    sleep       2s
    Page Should Contain Image       //tbody/tr[1]/td[1]/img[1]
    sleep       2s