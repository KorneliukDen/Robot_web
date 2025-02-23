*** Settings ***
Documentation    keywords for alza test
Library    SeleniumLibrary
Resource    ../locators/alza_loc.resource
Resource    ../web.resource


*** Keywords ***
Alza Search Product
    [Documentation]    This test performs a search for 'iPhone 13' on Alza.cz.
    Wait Until Element Is Visible    ${SEARCH_INPUT}
    Input Text    ${SEARCH_INPUT}    text=iPhone 13
    Sleep    1s
    Wait Until Element Is Visible    ${SEARCH_BTN}
    Click Element    ${SEARCH_BTN}
    Wait Until Page Contains Element    ${FIRST_RESULT_LOC}
    Scroll Element Into View    ${SECOND_RESULT_LOC}
    Click Element    ${FIRST_RESULT_LOC}

Check Title And Price Visibility
    [Documentation]     checks title and if the price is displayed
    ${title}=    Get Text    ${TITLE_OF_PRODUCT}
    Should Contain    ${title}    iPhone 13

    ${price_text}=    Get Text    ${PRICE_BOX}
    Should Not Be Empty    ${price_text}
    Log    Price displayed: ${price_text}
