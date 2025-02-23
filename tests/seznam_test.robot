*** Settings ***
Documentation
...    check login functionality with invalid credentials
Resource    ../keywords/seznam.resource
Test Setup    Open Browser And Maximize    site_url=https://seznam.cz/    browser=gc
Test Teardown    Closing Browser


*** Test Cases ***
Seznam Login Check
    [Documentation]    Test case to check login functionality with invalid credentials.
    Checking Mail Login
