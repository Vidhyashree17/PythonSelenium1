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
    #for verification
    element should be enabled       //body/div[@id='contcont']/div[1]/div[2]/div[1]/div[3]/div[1]/a[1]/img[1]
    sleep       2s