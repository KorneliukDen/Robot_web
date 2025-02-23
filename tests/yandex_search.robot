*** Settings ***
Documentation
...    Search for an article on Wikipedia and compare the title of the open page with the request and change language
Resource    ../keywords/yandex.resource
Test Setup    Open Browser And Maximize    site_url=https://yandex.com/    browser=gc
Test Teardown    Closing Browser


*** Test Cases ***
Checking Search And Page Loading
    [Documentation]
    ...  Search for an article on Wikipedia and compare the title of the open page with the request and change language
    Search Verification
    Language Change
