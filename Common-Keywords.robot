#Niko Lahtinen 2021
#Sitowise

*** Settings ***
Library  Browser

*** Variables ***
${LOGIN_URL}    https://testiextranet.vayla.fi/viite/
${BROWSER}      chromium
${HEADLESS}     False
${Sulje_btn}    css=.btn.btn-secondary.close


*** Test Cases ***
Login to Viite
    New Browser             ${BROWSER}  ${HEADLESS}
    New Page                ${LOGIN_URL}
    Set Viewport Size       1920  1080
    Fill Secret             id=username  $LiviUSER
    Fill Secret             id=password  $LiviPWD
    Click                   css=#loginData > div.button-row > input
    Sulje QA PopUp
    Close Browser

*** Keywords ***
Sulje QA PopUp
    Click                   ${Sulje_btn}