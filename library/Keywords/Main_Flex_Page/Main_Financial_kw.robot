*** Settings ***
Library           XML
Library           ../../../Resources/CustomSelenium2Library.py

*** Keywords ***
Select Pre-Pay Citation
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[84]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[84]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[85]/td[2]

Select Enter Misc. Revenues
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[84]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[84]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[86]/td[2]

Select Pay Citation(s)
    wait until element is visible    xpath=//td[contains(text(),'Financial')]    10
    Click Element    xpath=//td[contains(text(),'Financial')]
    Click Element    xpath=//a[contains(text(),'Pay Citation(s)')]

Search Customer In Pay Citations
    [Arguments]    ${LastName}    ${FirstName}    ${CitationNumber}    ${CitationNumber1}
    wait until element is visible    xpath=//a[text()='Search Customers']    10
    click Element    xpath=//a[text()='Search Customers']
    wait until element is visible    xpath=//*[@id='searchEntityControl1_LastNameText_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='searchEntityControl1_LastNameText_T2FormTextBox_TextBox']    ${LastName}
    Input Text    xpath=//*[@id='searchEntityControl1_FirstNameText_T2FormTextBox_TextBox']    ${FirstName}
    Click Element    xpath=//*[@id='searchEntityControl1_SearchButton']
    wait until element is visible    xpath=//td[text()='${FirstName}']/..    10
    Click Element    xpath=//td[text()='${FirstName}']/..
    wait until element is visible    xpath=//td[text()='${CitationNumber}']/../td[1]/input    10
    click Element    xpath=//td[text()='${CitationNumber}']/../td[1]/input
    click Element    xpath=//td[text()='${CitationNumber1}']/../td[1]/input
    click Element    xpath=//a[text()='Finish']

Search Citations
    [Arguments]    ${AmountPaid}
    wait until element is visible    xpath=//*[@id='PayContraventionWizard_WizardStep1_PaymentGrid_ctl02_AmountPaid_TextBox']    10
    Input Text    xpath=//*[@id='PayContraventionWizard_WizardStep1_PaymentGrid_ctl02_AmountPaid_TextBox']    ${AmountPaid}
    Input Text    xpath=//*[@id='PayContraventionWizard_WizardStep1_PaymentGrid_ctl03_AmountPaid_TextBox']    ${AmountPaid}
    Click Element    xpath=//a[text()='Add Payment to List']
    wait until element is visible    xpath=//*[@id='PayContraventionWizard_WizardStep1_BatchGrid_ctl02_PrintReceiptCheck_CheckBox']    10
    Click Element    xpath=//*[@id='PayContraventionWizard_WizardStep1_BatchGrid_ctl02_PrintReceiptCheck_CheckBox']
    Click Element    xpath=//a[text()='Save Payments']
    wait until element is visible    xpath=//*[@id='PayContraventionWizard_PrintSummaryReportStep_S3ByCitationNumber']    10
    Click Element    xpath=//*[@id='PayContraventionWizard_PrintSummaryReportStep_S3ByCitationNumber']
    Click Element    xpath=//a[text()='Print Report']

Click on Citation in the Grid
    [Arguments]    ${CitationNumber}
    wait until element is visible    xpath=//td[text()='${CitationNumber}']/..    10
    click Element    xpath=//td[text()='${CitationNumber}']/..

Click on Customer in the Grid
    [Arguments]    ${LastName}    ${FirstName}
    wait until element is visible    xpath=//td[text()='${LastName}, ${FirstName}']/..    10
    click Element    xpath=//td[text()='${LastName}, ${FirstName}']/..
