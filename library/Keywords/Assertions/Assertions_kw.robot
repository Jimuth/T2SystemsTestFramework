*** Settings ***
Library           XML
Library           ../../../Resources/CustomSelenium2Library.py

*** Keywords ***
Header Should Be Visible: "${header_text}"
    # This keyword verifies that the header with the type h2 as an element on the webpage is visible
    Wait Until Element Is Visible    xpath=//h2[text()='${header_text}']    timeout=6

Should Be Visible: "${text}"
    Wait Until Element Is Visible    xpath=//span[text()='${text}']    timeout=6
