*** Settings ***
Documentation    keywords for yandex search
Library    SeleniumLibrary
Resource    ../locators/yandex_loc.resource
Resource    ../web.resource


*** Keywords ***
Search Verification
    [Documentation]    Search for an article on Wikipedia and compare the title of the open page with the request
    Wait Until Element Is Visible    locator=${SEARCH_LINE}

    ${query}    Set Variable    Wikipedia Prague
    Input Text    locator=${SEARCH_LINE}    text=${query}
    Click Element    locator=${SEARCH_BTB}
    Wait Until Element Is Visible    locator=${CARD_HEADER_TITLE}

    Click Element    locator=${PAGE_LINK}

    ${windows}    Get Window Handles
    Switch Window    ${windows}[-1]

    ${title}    Get Text    locator=${PAGE_TITLE}
    Should Contain    ${title}    Prague

Language Change
    [Documentation]    change language to czech
    Wait Until Element Is Visible    ${LANG_BTN}
    Click Element    ${LANG_BTN}
    Wait Until Element Is Visible    ${LANG_SEARCH_LINE}
    Click Element    ${LANG_FILTER}
    Input Text    locator=${LANG_FILTER}    text=ces
    Click Element    ${CONFIRM_LANG}
