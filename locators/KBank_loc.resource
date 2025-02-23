*** Settings ***
Documentation    locators for KBank


*** Variables ***
${CREDIT_AMOUNT}                10000000      # Loan amount in CZK
${PRORERTY_PRICE}               12000000      # property value
${TERM_YEARS}                   10            # Loan term in years
${INTEREST_RATE}                5.69         # Interest rate
${BANK_CALCULATION}             1
${EXPECTED_PAYMENT}             1
${COOKIE_USAGE_NOTIFICATION}    //div[@class="px-8 sm:pl-12 pb-12 sm:pt-8 sm:pb-8"]
${DECLINE_COOKIE_BTN}           //button[contains(@class, 'js-cookie-decline')]
${SCROLLING_TO_CALCULATOR}      //div[@class="mb-32"]
${FIELD_1}                      //input[@class="form-control"]
${FIELD_2}                      (//input[@class="form-control"])[2]
${FIELD_3}                      (//input[@class="form-control"])[3]
${GET_BANK_CALCULATION}         //div[@class="h-tertiary mb-8"]
