*** Settings ***
Documentation    keywords for KBank
Library    SeleniumLibrary
Resource    ../locators/KBank_loc.resource
Resource    ../web.resource


*** Keywords ***
Decline Cookie
    [Documentation]    decline cookie files
    Wait Until Element Is Visible    ${COOKIE_USAGE_NOTIFICATION}
    Click Element    ${DECLINE_COOKIE_BTN}
    Wait Until Element Is Not Visible    ${COOKIE_USAGE_NOTIFICATION}    timeout=5s

Fill In Loan Parameters
    [Documentation]    Fills in the loan parameters on the bank page
    Scroll Element Into View    ${SCROLLING_TO_CALCULATOR}
    Clear Element Text    ${FIELD_1}
    Input Text    ${FIELD_1}    ${PRORERTY_PRICE}
    Clear Element Text    ${FIELD_2}
    Input Text    ${FIELD_2}    ${CREDIT_AMOUNT}
    Clear Element Text    ${FIELD_3}
    Input Text    ${FIELD_3}    ${TERM_YEARS}
    Execute JavaScript    document.querySelectorAll(".lwc-option")[4].click()

Value Of The Monthly Payment
    [Documentation]    Extracting the value of the monthly payment
    Wait Until Element Is Visible    ${GET_BANK_CALCULATION}
    ${monthly_payment_element} =    Get Text    ${GET_BANK_CALCULATION}
    Log    Monthly payment on the site: ${monthly_payment_element}
    ${monthly_payment_cleaned} =    Evaluate    '${monthly_payment_element}'.replace(' Kč', '').replace(' ', '')
    ${actual_payment} =    Evaluate    float(${monthly_payment_cleaned})
    Set Global Variable    ${BANK_CALCULATION}    ${actual_payment}
    Log    The received payment amount from the bank's website: ${BANK_CALCULATION}

Calculate Loan Payment
    [Documentation]  Calculating the monthly payment using the annuity formula
    [Arguments]    ${credit_amount}    ${term_years}    ${interest_rate}
    ${monthly_rate} =    Evaluate    ${interest_rate} / 100 / 12
    ${months} =    Evaluate    ${term_years} * 12
    ${numerator} =    Evaluate    ${monthly_rate} * (1 + ${monthly_rate}) ** ${months}
    ${denominator} =    Evaluate    (1 + ${monthly_rate}) ** ${months} - 1
    ${monthly_payment} =    Evaluate    ${credit_amount} * ${numerator} / ${denominator}
    ${rounded_payment} =    Evaluate    round(${monthly_payment}, 2)
    Set Global Variable    ${EXPECTED_PAYMENT}    ${rounded_payment}
    Log    Expected payment amount: ${EXPECTED_PAYMENT}
    RETURN    ${rounded_payment}

Comparing Amounts
    [Documentation]    Compares calculator calculations with bank calculations
    ${tolerance} =    Evaluate    ${EXPECTED_PAYMENT} * 0.002  # 0.2% of the expected amount
    Log    Accuracy (0.2%): ${tolerance}
    ${diff} =    Evaluate    abs(${BANK_CALCULATION} - ${EXPECTED_PAYMENT})
    Log    The difference between the calculation from the bank's website and the expected payment: ${diff}
    Should Be True    ${diff} <= ${tolerance}
