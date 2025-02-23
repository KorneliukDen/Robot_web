*** Settings ***
Documentation    Standard authorization with invalid data
Resource         ../web.resource
Resource         ../keywords/biblus.resource
Test Setup       Open Browser And Maximize    site_url=https://biblus.in/  browser=ff
Test Teardown    Closing Browser


*** Test Cases ***
Authorization
    [Documentation]    Standard authorization with invalid data
    [Template]    Invalid Data
    # 1. Valid login and invalid password
    %{LOGIN_BIBLUS}    invalid_password
    # 2. Invalid login and valid password
    invalid_login    %{PASSWORD_BIBLUS}
    # 3. Invalid log and invalid password
    invalid_login    invalid_password
