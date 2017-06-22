*** Settings ***
Library           XML
Library           ../../../Resources/CustomSelenium2Library.py

*** Keywords ***
Allocate Permits
    wait until element is visible    xpath=//td[contains(text(),'Processing')]    10s
    click Element    xpath=//td[contains(text(),'Processing')]
    Click Element    xpath=//a[contains(text(),'Allocate Permits')]

Allocate Permits wizard
    [Arguments]    ${PermitAllacoation}    ${PermitStart}    ${PermitEnd}
    wait until element is visible    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1NumberRange_T2DropDownList_DropDownList']    10
    Select From List    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1NumberRange_T2DropDownList_DropDownList']    ${PermitAllacoation}
    sleep    5
    Input Text    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1StartNumber_T2FormTextBox_TextBox']    ${PermitStart}
    Input Text    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1EndNumber_T2FormTextBox_TextBox']    ${PermitEnd}
    Select From List By Index    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1AllocateTo_T2DropDownList_DropDownList']    3
    Click Element    xpath=//*[@id='PermissionAllocateWizard_PermissionAllocateWizard_Next']

Permits Allocation Page
    wait until element is visible    xpath=//*[@id='SaveButton']    10
    Click Element    xpath=//*[@id='SaveButton']

Enter Customer Information P2-Third Party
    [Arguments]    ${FirstNameTP}    ${LastNameTP}    ${ClassificationTP}    ${SubclassificationTP}
    wait until element is visible    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2FirstName_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2FirstName_T2FormTextBox_TextBox']    ${FirstNameTP}
    Input Text    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2LastName_T2FormTextBox_TextBox']    ${LastNameTP}
    Select From List    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2Classification_T2DropDownList_DropDownList']    ${ClassificationTP}
    Sleep    5s
    Select From List    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2SubClassification_T2DropDownList_DropDownList']    ${SubclassificationTP}
    Click Element    xpath=//*[@id='SaveButton']

ThirdParty Details
    [Arguments]    ${ThirdPartyName}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityThirdParties_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_EntityThirdParties_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    Input Text    xpath=//*[@id='ctl00_pageContent_WizardStep1_ThirdPartyNameText_T2FormTextBox_TextBox']    ${ThirdPartyName}
    Click Element    xpath=//*[@id='ctl00_pageContent_WizardStep1_SearchButton']
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ThirdPartyInsertWizard_Next']    5
    Click Element    xpath=//*[@id='ctl00_pageContent_ThirdPartyInsertWizard_Next']
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_SaveButton']    5
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityThirdParties_UpdatePanel']/table/tbody/tr[3]/td[2]    5

Query manager
    [Arguments]    ${QueryViewer_Filter_Value_TextBox}
    wait until element is visible    xpath=.//a[contains(text(),'Query Manager')]    10s
    Click Element    xpath=.//a[contains(text(),'Query Manager')]
    Select From List    xpath=//select[@class='T2FormControl']
    Input Text    xpath=.//*[@id='QueryViewer_Filter_Value_TextBox']    ${QueryViewer_Filter_Value_TextBox}
    Click Element    xpath=//a[contains(.,'Go')]
    Click Element    xpath=.//*[@id='QueryViewer_ClearFilter']
    Click Element    xpath=.//*[@id='AddQuery']
    Click Element    xpath=//img[@title='Logout']

Query manager RBT
    wait until element is visible    xpath=//td[contains(text(),'Processing')]    10s
    click Element    xpath=//td[contains(text(),'Processing')]
    wait until element is visible    //a[contains(text(),'Query Manager')]    10s
    Click Element    //a[contains(text(),'Query Manager')]
    wait until element is visible    xpath=.//a[contains(text(),'Add New Query')]    10s
    Click Element    xpath=.//a[contains(text(),'Add New Query')]


Reports
    wait until element is visible    xpath=//a[text()='Reports ']    10s
    Click Element    xpath=//a[text()='Reports ']
    Select From List    xpath=//*[@id='WizardStep1_ReportCategory_T2DropDownList_DropDownList']
    Select From List    xpath=//*[@id='WizardStep1_ReportName_T2DropDownList_DropDownList']
    Click Element    xpath=//*[@id='ReportWizard_Cancel']
    Click Element    xpath=//*[@id='ReportWizard_Next']

Report Repository
    Click Element    xpath=//a[contains(text(), 'Report Repository')]
    Select From List    xpath=//*[@id='TaskTypeList_DropDownList']
    Select From List    xpath=//*[@id='TimePeriodList_DropDownList']
    Click Element    xpath=.//*[@id='GoButton']
    Click Element    xpath=.//*[@id='ClearButton']
    Click Element    xpath=.//*[@id='ReportList_last']
    Click Element    xpath=.//*[@id='ReportList_next']

Email Management
    Click Element    xpath=//a[contains(text(),'Email Management')]
    Select From List    xpath=//*[@id='EmailManagement_Filter_Columns_DropDownList']
    Input Text    xpath=//*[@id='EmailManagement_Filter_Value_TextBox']    ${Filter_Value_TextBox}
    Click Element    xpath=//*[@id='EmailManagement_StartFilter']
    Click Element    xpath=//*[@id='EmailManagement_ClearFilter']
    Click Element    xpath=//*[@id='AddEmail']

Waiting List Management
    Click Element    xpath=//a[contains(text(),'Waiting List Management')]
    Select From List    xpath=.//*[@id='WaitingLists_Filter_Columns_DropDownList']
    Input Text    xpath=//*[@id='WaitingLists_Filter_Value_TextBox']    ${WaitingLists_Filter_Value_TextBox}
    Click Element    xpath=.//*[@id='WaitingLists_StartFilter']
    Click Element    xpath=.//*[@id='WaitingLists_StartFilter']
    Click Element    xpath=//*[@id='WaitingLists_ClearFilter']
    Click Element    xpath=//a[@id='WaitingLists_MultipleSort']

Print Pending Letters
    wait until element is visible    xpath=//td[contains(text(),'Processing')]    10s
    Click Element    xpath=//td[contains(text(),'Processing')]
    Click Element    xpath=//a[contains(text(),'Print Pending Letters')]

Deallocate Permits

    Select From List    xpath=.//*[@id='PermissionDeallocateWizard_WizardStep1_S1AllocateTo_T2DropDownList_DropDownList']
    Click Element    xpath=.//*[@id='PermissionDeallocateWizard_WizardStep1_S1ReturnAll_T2CheckBox_CheckBox']
    Select From List    xpath=.//*[@id='PermissionDeallocateWizard_WizardStep1_S1NumberRange_T2DropDownList_DropDownList']
    Input Text    xpath=.//*[@id='PermissionDeallocateWizard_WizardStep1_S1StartNumber_T2FormTextBox_TextBox']    ${Permit Start}
    Input Text    xpath=.//*[@id='PermissionDeallocateWizard_WizardStep1_S1EndNumber_T2FormTextBox_TextBox']    ${Permit End}
    Click Element    xpath=.//*[@id='PermissionDeallocateWizard_PermissionDeallocateWizard_Cancel']
    Click Element    xpath=.//*[@id='PermissionDeallocateWizard_PermissionDeallocateWizard_Next']

Generate Permit Mailing Letters
    Click Element    xpath=.//*[@id='PermissionLetterWizard_WizardStep1_GenerateLetter_T2CheckBox_CheckBox']
    Select From List    xpath=.//*[@id='PermissionLetterWizard_WizardStep1_MailingDate_T2FormDatePicker_calendar_button']
    Click Element    xpath=.//*[@id='PermissionLetterWizard_WizardStep1_ShippingMethod_T2DropDownList_DropDownList']
    Click Element    xpath=.//*[@id='PermissionLetterWizard_PermissionLetterWizard_Cancel']
    Click Element    xpath=.//*[@id='Submit']

RoVR Unprocessed Vehicles
    Select From List    xpath=.//*[@id='RovrBatchesList_T2DropDownList_DropDownList']

Destroy Permits
    Click Element    xpath=.//*[@id='DestroyPermissionWizard_Step1_Permits_Remove']
    Click Element    xpath=.//*[@id='DestroyPermissionWizard_Step1_Permits_StartingPermitNumber']
    Click Element    xpath=.//*[@id='DestroyPermissionWizard_Step1_Permits_StartingPermitNumber']
    Click Element    xpath=.//*[text()='Permits']
    Click Element    xpath=.//*[@id='DestroyPermissionWizard_Step1_Permits_CheckAll']
    Click Element    xpath=.//*[@id='DestroyPermissionWizard_Step1_Permits_UncheckAll']
    Click Element    xpath=.//*[@id='DestroyPermissionWizard_Step1_Permits_RemoveChecked']
    Input Text    xpath=.//*[@id='DestroyPermissionWizard_Step1_StartingPermitNumberRangeValue_TextBox']    ${Starting Permit Number}
    Input Text    xpath=.//*[@id='DestroyPermissionWizard_Step1_EndingPermitNumberRangeValue_TextBox']    ${Ending Permit Number}
    Click Element    xpath=.//*[@id='DestroyPermissionWizard_Step1_Add']
    Click Element    xpath=.//*[@id='DestroyPermissionWizard_DestroyPermissionWizard_Cancel']
    Click Element    xpath=.//*[@id='DestroyPermissionWizard_DestroyPermissionWizard_Next']

Generate Waiting List Award Letters
    Select From List    xpath=//select[@class='T2FormControl']
    Click Element    xpath=.//*[@id='LetterWizard_LetterWizard_Cancel']
    Click Element    xpath=.//*[@id='LetterWizard_LetterWizard_Next']

Generate Appeal Letters
    Select From List    xpath=.//*[@id='GenerateAdjudicationLetterWizard_WizardStep1_PreprocessingFilterQuery_T2DropDownList_DropDownList']
    Click Element    xpath=.//*[@id='GenerateAdjudicationLetterWizard_WizardStep1_StartingAppliedDate_T2FormDatePicker_calendar_button']
    Click Element    xpath=.//*[@id='GenerateAdjudicationLetterWizard_WizardStep1_EndingAppliedDate_T2FormDatePicker_calendar_button']
    Select From List    xpath=.//*[@id='GenerateAdjudicationLetterWizard_WizardStep1_AdjudicationResults_LeftBox']
    Select From List    xpath=.//*[@id='GenerateAdjudicationLetterWizard_WizardStep1_AdjudicationResults_LeftBox']
    Select From List    xpath=.//*[@id='GenerateAdjudicationLetterWizard_WizardStep1_AddressTypes_LeftBox']
    Select From List    xpath=.//*[@id='GenerateAdjudicationLetterWizard_WizardStep1_LetterTemplate_T2DropDownList_DropDownList']
    Click Element    xpath=.//*[@id='GenerateAdjudicationLetterWizard_GenerateAdjudicationLetterWizard_Cancel']
    Click Element    xpath=.//*[@id='GenerateAdjudicationLetterWizard_Submit']

Profile Management
    wait until element is visible    xpath=//*[contains(text(),'Profile Management')]    10
    Click Element    xpath=//*[contains(text(),'Profile Management')]
    Select From List    xpath=.//*[@id='ProfileList_Filter_Columns_DropDownList']
    Input Text    xpath=.//*[@id='ProfileList_Filter_Value_TextBox']    ${ProfileList_Filter_Value_TextBox}
    Click Element    xpath=.//*[@id='ProfileList_StartFilter']
    Click Element    xpath=.//*[@id='ProfileList_ClearFilter']

Profile Access Schedule Management
    wait until element is visible    xpath=//*[contains(text(),'Profile Access Schedule Management')]    10
    Click Element    xpath=//*[contains(text(),'Profile Access Schedule Management')]
    Select From List    xpath=.//*[@id='WhatIfPanel1_ScenariosGrid_Filter_Columns_DropDownList']
    Input Text    xpath= .//*[@id='WhatIfPanel1_ScenariosGrid_Filter_Value_TextBox']    ${WhatIfPanel1_ScenariosGrid_Filter_Value_TextBoxr}
    Click Element    xpath=.//*[@id='ProfileTimeSchedules_StartFilter']
    Click Element    xpath=//*[@id='WhatIfPanel1_ScenariosGrid_ClearFilter']

What-If Scenario Management
     [Arguments]    ${ProfileTimeSchedules_Filter_Value_TextBoxr}
    wait until element is visible    xpath=//*[contains(text(),'What-If Scenario Management')]    10
    Click Element    xpath=//*[contains(text(),'What-If Scenario Management')]
    Select From List    xpath=.//*[@id='WhatIfPanel1_ScenariosGrid_Filter_Columns_DropDownList']
    Input Text    xpath=.//*[@id='ProfileTimeSchedules_Filter_Value_TextBox']    ${ProfileTimeSchedules_Filter_Value_TextBoxr}
    Click Element    xpath=.//*[@id='WhatIfPanel1_ScenariosGrid_StartFilter']']
    Click Element    xpath=.//*[@id='ProfileTimeSchedules_ClearFilter']
    Click Element    xpath=.//*[@id='WhatIfWizard_Cancel']
    Click Element    xpath=.//*[@id='btnInsert']

Device Transaction Management
    [Arguments]    ${DeviceTransactionGrid_Filter_Value_TextBox}
    Select From List    xpath=.//*[@id='DeviceTransactionGrid_Filter_Columns_DropDownList']
    Input Text    xpath= .//*[@id='DeviceTransactionGrid_Filter_Value_TextBox']    ${DeviceTransactionGrid_Filter_Value_TextBox}
    Click Element    xpath=.//*[@id='DeviceTransactionGrid_StartFilter']
    Click Element    xpath=.//*[@id='DeviceTransactionGrid_ClearFilter']

Generate Permit Renewal Letters
    Select From List    xpath=//*[@id='GenerateRenewalLettersWizard_WizardStep1_PermitControlGroupList_LeftBox']
    Select From List    xpath=.//*[@id='GenerateRenewalLettersWizard_WizardStep1_EntitySubclassList_LeftBox']
    Click Element    xpath=.//*[@id='GenerateRenewalLettersWizard_WizardStep1_DateRangeStart_T2FormDatePicker_calendar_button']
    Click Element    xpath=.//*[@id='GenerateRenewalLettersWizard_WizardStep1_DateRangeStart_T2FormDatePicker_calendar_button']
    Select From List    xpath=.//*[@id='GenerateRenewalLettersWizard_WizardStep1_LetterDropDown_T2DropDownList_DropDownList']
    Click Element    xpath=.//*[@id='GenerateRenewalLettersWizard_GenerateRenewalLettersWizard_Cancel']
    Click Element    xpath=//a[@id='Submit']

Allocate Permits wizard-Third Party
    [Arguments]    ${PermitAllacoation}    ${PermitStart}    ${PermitEnd}    ${Drawer}
    wait until element is visible    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1NumberRange_T2DropDownList_DropDownList']    10
    Select From List    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1NumberRange_T2DropDownList_DropDownList']    ${PermitAllacoation}
    sleep    5
    Input Text    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1StartNumber_T2FormTextBox_TextBox']    ${PermitStart}
    Input Text    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1EndNumber_T2FormTextBox_TextBox']    ${PermitEnd}
    Select From List    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1AllocateTo_T2DropDownList_DropDownList']    ${Drawer}
    Click Element    xpath=//*[@id='PermissionAllocateWizard_PermissionAllocateWizard_Next']
    wait until element is visible    xpath=//*[@id='PermissionAllocateWizard']/tbody/tr[3]/td    5
    Click Element    xpath=//*[@id='SaveButton']
    wait until element is visible    xpath=//td[contains(text(),'Allocate Permits')]    5

Allocate Permits wizard PEM
    [Arguments]    ${PermitAllacoation}    ${PermitStart}    ${PermitEnd}    ${CashDrawer}
    wait until element is visible    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1NumberRange_T2DropDownList_DropDownList']    10
    Select From List    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1NumberRange_T2DropDownList_DropDownList']    ${PermitAllacoation}
    sleep    5
    Input Text    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1StartNumber_T2FormTextBox_TextBox']    ${PermitStart}
    Input Text    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1EndNumber_T2FormTextBox_TextBox']    ${PermitEnd}
    Select From List    xpath=//*[@id='PermissionAllocateWizard_WizardStep1_S1AllocateTo_T2DropDownList_DropDownList']    ${CashDrawer}
    Click Element    xpath=//*[@id='PermissionAllocateWizard_PermissionAllocateWizard_Next']

