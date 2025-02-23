*** Settings ***
Documentation    locators for seznam.cz


*** Variables ***
${LOGIN_BTN}    //a[contains(@class, 'atm-link') and contains(@class, 'button--submit')]
${USER_NAME_FIELD}      //input[@id="login-username"]
${PASSWORD_FIELD}       //input[@id="login-password"]
${LOGIN_SUBMIT_BTN}     //button[@data-locale="login.submit"]
${ERROR_MSG}            //div[@class="error"]
