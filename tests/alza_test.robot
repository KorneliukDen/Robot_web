*** Settings ***
Documentation    search for 'iPhone 13' on Alza.cz and checks if the price is displayed
Resource    ../keywords/alza.resource
Test Setup    Open Browser And Maximize    site_url=https://alza.cz/    browser=gc
Test Teardown    Closing Browser


*** Test Cases ***
Performs A Search For Alza
    [Documentation]    This test performs a search for 'iPhone 13' on Alza.cz and checks if the price is displayed
    Alza Search Product
    Check Title And Price Visibility
