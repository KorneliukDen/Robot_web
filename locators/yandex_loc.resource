*** Settings ***
Documentation    locators for yandex search


*** Variables ***
${SEARCH_LINE}    //input[contains(@class, "search3__input")]
${SEARCH_BTB}    //button[contains(@class, "search3__button")]
${CARD_HEADER_TITLE}    //h2[contains(@class, "CardHeader-Title")]
${PAGE_LINK}    //span[contains(@class, "OrganicTitleContentSpan")]
${PAGE_TITLE}    //span[@class="mw-page-title-main"]
${LANG_BTN}    //div[@id="p-lang-btn"]
${LANG_SEARCH_LINE}    //div[@class="uls-search-input-wrapper"]
${LANG_FILTER}    //input[@class="uls-filterinput uls-languagefilter noime languagefilter"]
${CONFIRM_LANG}    (//a[text()="Čeština"])[2]
