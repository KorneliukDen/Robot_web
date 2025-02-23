*** Settings ***
Documentation    Checking the KB Bank mortgage calculator
Resource         ../keywords/KBank.resource
Test Setup       Open Browser And Maximize    site_url=https://www.kb.cz/cs/obcane/pujcky/hypoteky/hypoteka    browser=gc
Test Teardown    Closing Browser


*** Test Cases ***
Check Loan Payment Calculation
    [Documentation]    Checking the correctness of calculations for the mortgage calculator of KB Bank
    Decline Cookie
    Fill In Loan Parameters
    Value Of The Monthly Payment
    Calculate Loan Payment    ${CREDIT_AMOUNT}    ${TERM_YEARS}    ${INTEREST_RATE}
    Comparing Amounts
