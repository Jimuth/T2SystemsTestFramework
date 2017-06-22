*** Settings ***
Library           XML
Variables         ../../../Resources/Flex_Login_Variables.py
Library           ../../../Resources/CustomSelenium2Library.py

*** Keywords ***
parse xml
    [Tags]    P1    TC1234
    #${root} =    Parse XML    output.xml
    ${Stats1} =    get element attributes    results/output.xml    statistics/tag/stat[1]
    ${Stats2} =    get element attributes    results/output.xml    statistics/tag/stat[2]
    ${Tag1} =    get element text    results/output.xml    statistics/tag/stat[1]
    ${Tag2} =    get element text    results/output.xml    statistics/tag/stat[2]
    log to console    ${Tag1}
    log to console    ${Stats1}
    log to console    ${Tag2}
    log to console    ${Stats2}

Login Generic User
    [Arguments]    ${searchkey}    ${password}
    Input Username    ${searchkey}
    Input Text    id=ctl00_pageContent_Password_T2FormTextBox_TextBox    ${password}
    click element    id=ctl00_pageContent_LoginButton

Login System Admin
    [Arguments]    ${searchkey}    ${password}
    Input Username    ${searchkey}
    Input Text    id=ctl00_pageContent_Password_T2FormTextBox_TextBox    ${password}
    click element    id=ctl00_pageContent_LoginButton

Go to homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}


Input Username
    [Arguments]    ${userName}
    wait until element is visible    id=ctl00_pageContent_UserID_T2FormTextBox_TextBox
    Input Text    id=ctl00_pageContent_UserID_T2FormTextBox_TextBox    ${userName}

Generate Random Customer Name
    ${random}=    Get Time    epoch
    ${new_customer_name}=    Catenate    SEPARATOR=    name    ${random}
    [Return]    ${new_customer_name}
