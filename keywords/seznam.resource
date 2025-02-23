*** Settings ***
Documentation    keywords for seznam.cz
Library    SeleniumLibrary
Resource    ../locators/seznam_loc.resource
Resource    ../web.resource


*** Keywords ***
Checking Mail Login
    [Documentation]    Checking email login with invalid data
    Wait Until Element Is Visible    ${LOGIN_BTN}
    Click Element    ${LOGIN_BTN}
    Switch Window    NEW
    Wait Until Element Is Visible    ${USER_NAME_FIELD}
    Input Text    ${USER_NAME_FIELD}    test@seznam.cz
    Click Element    ${LOGIN_SUBMIT_BTN}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}
    Input Password    ${PASSWORD_FIELD}    123456Qwerty
    Click Element    ${LOGIN_SUBMIT_BTN}
    Wait Until Element Is Visible    ${ERROR_MSG}
