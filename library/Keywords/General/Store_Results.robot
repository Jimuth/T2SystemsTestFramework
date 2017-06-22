*** Settings ***
Documentation     Suite description
Library           XML
Library           ../../../Resources/CustomSelenium2Library.py

*** Keywords ***
Write Result
    set variable    result = 1;
    ${result}=    "1";
    [Return]    ${result}

Insert Citation Validation
