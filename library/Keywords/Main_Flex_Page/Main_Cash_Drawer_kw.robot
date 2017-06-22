*** Settings ***
Library           XML
Library           ../../../Resources/CustomSelenium2Library.py

*** Keywords ***
Insert/Edit Cash Drawer
    [Arguments]    ${CashDrawerCode}    ${CashDrawerDescription}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${CashDrawerCode}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${CashDrawerDescription}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Cash Drawer
    wait until element is visible    xpath=//td[contains(text(),'Cash Drawer')]    10s
    click Element    xpath=//td[contains(text(),'Cash Drawer')]
    Click Element    xpath=//a[contains(text(),'Open/Login Cash Drawer')]

Open/Login a cash drawer
    [Arguments]    ${Description}    ${DefaultPOSHardware}
    wait until element is visible    xpath=//td[contains(text(),'Cash Drawer')]    10s
    Click Element    xpath=//td[contains(text(),'Cash Drawer')]
    Click Element    xpath=//a[contains(text(),'Open/Login Cash Drawer')]
    wait until element is visible    xpath=//a[text()='Open']    10s
    Click Element    xpath=//*[contains(text(),'${Description}')]//../input
    Sleep    10s
    Select From List    xpath=//*[@id='WizardStep1_POSHardware_T2DropDownList_DropDownList']    ${DefaultPOSHardware}
    Click Element    xpath=//a[text()='Open']

Logout of Cash Drawer
    wait until element is visible    xpath=//td[contains(text(),'Cash Drawer')]    10s
    click Element    xpath=//td[contains(text(),'Cash Drawer')]
    Click Element    xpath=//a[contains(text(),'Logout of Cash Drawer')]

Selection Basket
    wait until element is visible    xpath=//a[contains(text(),'[ Add Misc. Item ]')]
    Click Element    xpath=//a[contains(text(),'[ Add Misc. Item ]')]

Select Misc Sale Item
    wait until element is visible    xpath=//a[contains(text(),'[ Add Misc. Item ]')]
    Click Element    xpath=//a[contains(text(),'[ Add Misc. Item ]')]
    wait until element is visible    xpath=//*[contains(text(),'Account Deposit - Customer')]
    Click Element    xpath=//*[contains(text(),'jimtest')]
    Comment    Click Element    xpath=//*[contains(text(),'Account Deposit - Customer')]
    Sleep    3s
    wait until element is visible    xpath=//*[contains(text(),'[ Check Out ]')]
    Click Element    xpath=//*[contains(text(),'[ Check Out ]')]

Related Items
    [Arguments]    ${LastName}    ${FirstName}    ${amount}    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep1_S1CreateProfileCheckBox_CheckBox']
    Click Element    xpath=//*[@id='CheckOutWizard_WizardStep1_S1CreateProfileCheckBox_CheckBox']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep1_S1FindEntityButton']
    Click Element    xpath=//*[@id='CheckOutWizard_WizardStep1_S1FindEntityButton']
    wait until element is visible    xpath=//*[@id='EntityLinkWizard_WizardStep1_S1LastNameText_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='EntityLinkWizard_WizardStep1_S1LastNameText_T2FormTextBox_TextBox']    ${LastName}
    wait until element is visible    xpath=//*[@id='EntityLinkWizard_WizardStep1_S1FirstNameText_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='EntityLinkWizard_WizardStep1_S1FirstNameText_T2FormTextBox_TextBox']    ${FirstName}
    wait until element is visible    xpath=//*[@id='EntityLinkWizard_WizardStep1_SearchButton']
    Click Element    xpath=//*[@id='EntityLinkWizard_WizardStep1_SearchButton']
    wait until element is visible    xpath=//*[text()='${LastName}']
    Click Element    xpath=//*[text()='${LastName}']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep1_S1BasketGrid_ctl02_S1PaymentText_TextBox']    10s
    Clear Element Text    xpath=//*[@id='CheckOutWizard_WizardStep1_S1BasketGrid_ctl02_S1PaymentText_TextBox']
    Sleep    3
    Input Text    xpath=//*[@id='CheckOutWizard_WizardStep1_S1BasketGrid_ctl02_S1PaymentText_TextBox']    ${amount}
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    Click Element    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='FinishButton']
    Click Element    xpath=//*[@id='FinishButton']

Click Citations
    wait until element is visible    //*[@id='ctl00_pageContent_EntityContraventions_UpdatePanel']/table/tbody/tr[3]/td[4]    5
    Click Element    //*[@id='ctl00_pageContent_EntityContraventions_UpdatePanel']/table/tbody/tr[3]/td[4]
    wait until element is visible    xpath=//a[contains(text(),'Add to Basket')]
    wait until element is visible    xpath=//*[contains(text(),'[ Check Out ]')]
    Click Element    xpath=//*[contains(text(),'[ Check Out ]')]

Link Customer button
    [Arguments]    ${Last}    ${FirstName}    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep1_S1CreateProfileCheckBox_CheckBox']    5
    Click Element    xpath=//*[@id='CheckOutWizard_WizardStep1_S1CreateProfileCheckBox_CheckBox']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep1_S1FindEntityButton']    5
    Click Element    xpath=//*[@id='CheckOutWizard_WizardStep1_S1FindEntityButton']
    Input Text    xpath=//*[@id='EntityLinkWizard_WizardStep1_S1LastNameText_T2FormTextBox_TextBox']    ${Last}
    wait until element is visible    xpath=//*[@id='EntityLinkWizard_WizardStep1_S1FirstNameText_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='EntityLinkWizard_WizardStep1_S1FirstNameText_T2FormTextBox_TextBox']    ${FirstName}
    wait until element is visible    xpath=//*[@id='EntityLinkWizard_WizardStep1_SearchButton']
    Click Element    xpath=//*[@id='EntityLinkWizard_WizardStep1_SearchButton']
    wait until element is visible    xpath=//*[text()='${Last}']
    Click Element    xpath=//*[text()='${Last}']
    wait until element is visible    //*[@id='CheckOutWizard_CheckOutWizard_Next']
    Click Element    //*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='FinishButton']
    Click Element    xpath=//*[@id='FinishButton']

Click Citations2
    wait until element is visible    xpath=//*[@id="ctl00_pageContent_EntityContraventions_UpdatePanel"]/table/tbody/tr[3]/td[4]    5
    Click Element    xpath=//*[@id="ctl00_pageContent_EntityContraventions_UpdatePanel"]/table/tbody/tr[3]/td[4]
