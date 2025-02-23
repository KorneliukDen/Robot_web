*** Settings ***
Documentation    Creating new course
Resource    ../keywords/stepik.resource
Test Setup    Open Browser And Maximize    site_url=https://teach.stepik.org/ru    browser=gc
Test Teardown    Closing Browser


*** Test Cases ***
Create course
    [Documentation]    Creating new course
    To Course Creating Landing
    To Free Course Create
    To Sing Form
