*** Settings ***
Documentation    locators for alza


*** Variables ***
${SEARCH_INPUT}    //input[@class="header-alz-127 default-placeholder"]
${SEARCH_BTN}    //button[@data-testid="button-search"]
${FIRST_RESULT_LOC}    (//a[@class="name browsinglink js-box-link"])[1]
${SECOND_RESULT_LOC}    //a[@class="btnk1"]
${TITLE_OF_PRODUCT}    //h1[@class="h1-placeholder"]
${PRICE_BOX}    (//span[@class="price-box__price"])[1]
