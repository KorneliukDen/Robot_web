*** Settings ***
Documentation    Checking log in and opened books
Resource         ../web.resource
Resource         ../keywords/biblus.resource
Test Setup       Open Browser And Maximize    site_url=https://biblus.in/  browser=ff
Test Teardown    Closing Browser


*** Test Cases ***
Cheking log in & books
    [Documentation]    Checking log in and opened books
    Authorization
    Book Author
