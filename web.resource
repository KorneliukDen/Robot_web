*** Settings ***
Documentation    precondition and postcondition for web testing
Library    SeleniumLibrary


*** Keywords ***
Open Browser And Maximize
    [Documentation]    open browser and maximize
    [Arguments]    ${site_url}=https://yandex.com/    ${browser}=gc
    Open Browser    ${site_url}    ${browser}
    Maximize Browser Window

Closing Browser
    [Documentation]    close browser
    Close Browser
