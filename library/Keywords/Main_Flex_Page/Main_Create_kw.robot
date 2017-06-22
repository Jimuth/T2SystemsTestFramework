*** Settings ***
Library           XML
Library           ../../../Resources/CustomSelenium2Library.py

*** Keywords ***
Select Insert Customer
    wait until element is visible    xpath=//td[contains(text(),'Create')]    10
    click Element    xpath=//td[contains(text(),'Create')]
    Click Element    xpath=//a[contains(text(), "Insert Customer")]

Enter Customer Information P1
    wait until element is visible    xpath=//*[@id='EntityInsertWizard_WizardStep1Individual_S1GroupName_T2FormTextBox_TextBox']    10s
    Click Element    xpath=//*[@id='EntityInsertWizard_EntityInsertWizard_Next']

Enter Customer Information P2
    [Arguments]    ${FirstName}    ${LastName}    ${Classification}    ${Subclassification}
    wait until element is visible    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2FirstName_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2FirstName_T2FormTextBox_TextBox']    ${FirstName}
    Input Text    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2LastName_T2FormTextBox_TextBox']    ${LastName}
    Select From List    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2Classification_T2DropDownList_DropDownList']    ${Classification}
    Sleep    5s
    Select From List    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2SubClassification_T2DropDownList_DropDownList']    ${Subclassification}
    Click Element    xpath=//*[@id='SaveButton']

Enter Customer Information P2 Sell Permit
    [Arguments]    ${FirstName}    ${LastName}    ${Classification}    ${Subclassification}
    wait until element is visible    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2FirstName_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2FirstName_T2FormTextBox_TextBox']    ${FirstName}
    Input Text    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2LastName_T2FormTextBox_TextBox']    ${LastName}
    Select From List    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2Classification_T2DropDownList_DropDownList']    ${Classification}
    Sleep    5s
    Select From List    xpath=//*[@id='EntityInsertWizard_WizardStep2Details_S2SubClassification_T2DropDownList_DropDownList']    ${Subclassification}
    Click Element    xpath=//*[@id='SaveAndSellPermitButton']

Sell Permit
    [Arguments]    ${FirstName}    ${LastName}    ${Classification}    ${Subclassification}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    ${FirstName}
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${FirstName}

Apply Fee Link
    wait until element is visible    xpath=//a[contains(text(), 'Apply Fee')]    10s
    Click Element    xpath=//a[contains(text(), 'Apply Fee')]
    wait until element is visible    xpath=//a[text()='Save']    10s
    Click Element    xpath=//a[text()='Save']
    Sleep    5s

Fee Page
    [Arguments]    ${SelectFee}
    wait until element is visible    xpath=//*[@id='WizardStep1_S1Fee_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='WizardStep1_S1Fee_T2DropDownList_DropDownList']    ${SelectFee}
    Click Element    xpath=//*[@id='SaveButton']

Adjust Fee Link
    wait until element is visible    xpath=//*[@id='Table1']/tbody/tr/td[1]/table[1]/tbody/tr/td[2]    10s
    Click Element    xpath=//*[@id='PageSideBar']/tbody/tr[12]/td/a

Adjust Fee Page
    [Arguments]    ${Adjustment}    ${Reason}
    wait until element is visible    xpath=//*[@id='WizardStep1_S1AdjustmentTextbox_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='WizardStep1_S1AdjustmentTextbox_T2FormTextBox_TextBox']    ${Adjustment}
    Input Text    xpath=//*[@id='WizardStep1_S1ReasonTextbox_T2FormTextBox_TextBox']    ${Reason}
    Click Element    xpath=//*[@id='SaveButton']

Select Insert Vehicle
    wait until element is visible    xpath=//td[contains(text(),'Create')]    10s
    click Element    xpath=//td[contains(text(),'Create')]
    Click Element    xpath=//a[contains(text(),'Insert Vehicle')]

Enter Vehicle Details2
    [Arguments]    ${Type2}
    wait until element is visible    xpath=//*[@id='VehicleInsertWizard_VehicleInsertWizard_Next']    10s
    Click Element    xpath=//*[@id='VehicleInsertWizard_VehicleInsertWizard_Next']
    wait until element is visible    xpath=//*[@id='VehicleInsertWizard_WizardStep3_S3Relationship_T2DropDownList_DropDownList']    10s
    Select From List    //*[@id='VehicleInsertWizard_WizardStep3_S3Relationship_T2DropDownList_DropDownList']    ${Type2}
    wait until element is visible    xpath=//*[@id='SaveRelationshipButton']    10s
    Click Element    xpath=//*[@id='SaveRelationshipButton']

Enter Vehicle Information Page
    [Arguments]    ${State}    ${LicensePlate}    ${PlateType}
    wait until element is visible    xpath=//select[@id='VehicleInsertWizard_WizardStep1_S1PlateState_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//select[@id='VehicleInsertWizard_WizardStep1_S1PlateState_T2DropDownList_DropDownList']    ${State}
    Input Text    xpath=//input[@id='VehicleInsertWizard_WizardStep1_S1PlateNumber_T2FormTextBox_TextBox']    ${LicensePlate}
    Select From List    xpath=//select[@id='VehicleInsertWizard_WizardStep1_S1PlateType_T2DropDownList_DropDownList']    ${PlateType}
    click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//a[text()='Save']
    click Element    xpath=//a[text()='Save']

Select Insert Property
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[4]/td[2]/a

Select Insert Third Party
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[5]/td[2]/a

Select Insert Citation
    wait until element is visible    xpath=//td[contains(text(),'Create')]    20s
    click Element    xpath=//td[contains(text(),'Create')]
    Click Element    xpath=//a[contains(text(),'Insert Citation')]

Enter Citation Information P2 PC
    [Arguments]    ${Style}    ${Color}
    wait until element is visible    xpath=//*[@id='ContraventionInsertWizard_WizardStep2_S2Style_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep2_S2Style_T2DropDownList_DropDownList']    ${Style}
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep2_S2Color_T2DropDownList_DropDownList']    ${Color}
    Click Element    xpath=//*[@id='SaveButton']

Select Insert Citation InnerPage
    wait until element is visible    xpath=//td[contains(text(),'Create')]    10
    Click Element    xpath=//td[contains(text(),'Create')]
    Wait Until Element Is Visible    xpath=//a[contains(text(),'Insert Citation')]    10
    Click Element    xpath=//a[contains(text(),'Insert Citation')]

Enter Citation Information P1
    [Arguments]    ${CitationNumber}    ${ViolationCode}    ${Location}    ${State}    ${LicensePlate}    ${PlateType}
    wait until element is visible    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${CitationNumber}
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1ViolationCode_T2DropDownList_DropDownList']    ${ViolationCode}
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1Location_T2DropDownList_DropDownList']    ${Location}
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1State_T2DropDownList_DropDownList']    ${State}
    Input Text    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1License_T2FormTextBox_TextBox']    ${LicensePlate}
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1PlateType_T2DropDownList_DropDownList']    ${PlateType}
    Click Element    xpath=//*[@id='ContraventionInsertWizard_ContraventionInsertWizard_Next']

Enter Citation Information P1-Dropdown by Index
    [Arguments]    ${CitationNumber}    ${State}    ${LicensePlate}    ${PlateType}
    wait until element is visible    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${CitationNumber}
    Select From List By Index    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1ViolationCode_T2DropDownList_DropDownList']    3
    Select From List By Index    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1Location_T2DropDownList_DropDownList']    3
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1State_T2DropDownList_DropDownList']    ${State}
    Input Text    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1License_T2FormTextBox_TextBox']    ${LicensePlate}
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep1_S1PlateType_T2DropDownList_DropDownList']    ${PlateType}
    Click Element    xpath=//*[@id='ContraventionInsertWizard_ContraventionInsertWizard_Next']

Enter Citation Information P2
    [Arguments]    ${Make}    ${Model}    ${Style}    ${Color}
    wait until element is visible    xpath=//*[@id='ContraventionInsertWizard_WizardStep2_S2Make_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep2_S2Make_T2DropDownList_DropDownList']    ${Make}
    Sleep    5s
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep2_S2Model_T2DropDownList_DropDownList']    ${Model}
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep2_S2Style_T2DropDownList_DropDownList']    ${Style}
    Select From List    xpath=//*[@id='ContraventionInsertWizard_WizardStep2_S2Color_T2DropDownList_DropDownList']    ${Color}
    Click Element    xpath=//*[@id='SaveButton']

Enter Citation Information P2-No Entery
    wait until element is visible    xpath=//*[@id='SaveButton']    10s
    Click Element    xpath=//*[@id='SaveButton']

Select Insert Facility
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[7]/td[2]/a

Select Insert Event
    wait until element is visible    xpath=//td[contains(text(),'Create')]
    click Element    xpath=//td[contains(text(),'Create')]
    Click Element    xpath=//a[contains(text(),'Insert Event')]

Event Insert/Edit
    [Arguments]    ${EventTitle}    ${EventClassification}    ${StartDate}    ${StartTime}    ${EndDate}    ${End Time}
    ...    ${xx}
    wait until element is visible    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1EventTitle_T2FormTextBox_TextBox']    10s
    Input Text    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1EventTitle_T2FormTextBox_TextBox']    ${EventTitle}
    Select From List    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1EventClass_T2DropDownList_DropDownList']    ${EventClassification}
    Input Text    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1StartDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${StartDate}
    Select From List    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1StartTime_T2FormDatePicker_T2FormDatePicker_hour']    ${StartTime}
    Select From List    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1StartTime_T2FormDatePicker_T2FormDatePicker_am_pm']    ${xx}
    Input Text    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1EndDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${EndDate}
    Select From List    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1EndTime_T2FormDatePicker_T2FormDatePicker_hour']    ${End Time}
    Select From List    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1EndTime_T2FormDatePicker_T2FormDatePicker_am_pm']    ${xx}
    Click Element    xpath=.//*[@id='insertEventControl1_InsertWizard_WizardStep1_S1Locations_T2CheckBoxList_CheckBoxList_0']
    Click Element    xpath=.//*[@id='insertEventControl1_SaveButton']

Click Contacts
    [Arguments]    ${LastName}    ${FirstName}
    Sleep    10s
    wait until element is visible    xpath=//*[@id='T2TabControl1_T2TabControl1_ContactsTab_btn']    30
    Click Element    xpath=//*[@id='T2TabControl1_T2TabControl1_ContactsTab_btn']
    wait until element is visible    xpath=.//*[@id='LastNameText_T2FormTextBox_TextBox']    30
    Input Text    xpath=//*[@id='LastNameText_T2FormTextBox_TextBox']    ${LastName}
    Input Text    xpath=.//*[@id='FirstNameText_T2FormTextBox_TextBox']    ${FirstName}
    Click Element    xpath=.//*[@id='ContactsSearchEntityBtn']

Search Customers Edit Event
    [Arguments]    ${EventContactType}
    wait until element is visible    xpath =//td[contains(text(),'${FirstNameCEIC}')]//following-sibling::td[6]/a
    Click Element    xpath =//td[contains(text(),'${FirstNameCEIC}')]//following-sibling::td[6]/a
    wait until element is visible    xpath =//*[@id='insertEditContactControl_InsertEventEntityWizard_WizardStep1_S1ContactType_T2DropDownList_DropDownList']
    Select From List    xpath =//*[@id='insertEditContactControl_InsertEventEntityWizard_WizardStep1_S1ContactType_T2DropDownList_DropDownList']    ${EventContactType}
    wait until element is visible    xpath = //*[@id='insertEditContactControl_SaveButton']
    Click Element    xpath = //*[@id='insertEditContactControl_SaveButton']
    wait until element is visible    xpath = //*[@id='T2TabControl1_T2TabControl1_ResourcesTab_btn']    10s
    Click Element    xpath=//*[@id='T2TabControl1_T2TabControl1_ResourcesTab_btn']

Click Edit Event Resources
    wait until element is visible    xpath =//td[contains(text(),'${DescriptionCEICECRSF}')]//following-sibling::td[4]/a    10
    Click Element    xpath =//td[contains(text(),'${DescriptionCEICECRSF}')]//following-sibling::td[4]/a
    wait until element is visible    xpath=//*[@id='insertResourceControl_SaveButton']    10
    Click Element    xpath=//*[@id='insertResourceControl_SaveButton']
    Sleep    10
    wait until element is visible    xpath =//td[contains(text(),'${DescriptionCEICECR}')]//following-sibling::td[4]/a    10
    Click Element    xpath =//td[contains(text(),'${DescriptionCEICECR}')]//following-sibling::td[4]/a
    wait until element is visible    xpath=//*[@id='insertResourceControl_SaveButton']    10
    Click Element    xpath=//*[@id='insertResourceControl_SaveButton']

Click Notes EditEvent
    [Arguments]    ${NoteType}    ${NoteText}
    wait until element is visible    xpath = //*[@id='T2TabControl1_T2TabControl1_NotesTab_btn']    10
    Click Element    xpath = //*[@id='T2TabControl1_T2TabControl1_NotesTab_btn']
    wait until element is visible    xpath = //*[@id="CurrentNotesAddBtn"]    10
    Click Element    xpath = //*[@id="CurrentNotesAddBtn"]
    wait until element is visible    xpath=//*[@id='insertEditNoteControl_WizardStep1_S1NoteType_T2DropDownList_DropDownList']
    Select From List    xpath=//*[@id='insertEditNoteControl_WizardStep1_S1NoteType_T2DropDownList_DropDownList']    ${NoteType}
    Input Text    xpath=//*[@id='insertEditNoteControl_WizardStep1_S1NoteText_T2FormTextBox_TextBox']    ${NoteText}
    Click Element    xpath =//*[@id='insertEditNoteControl_SaveButton']

Click EventManager
    wait until element is visible    xpath = //*[contains(text(),'Approve Event')]    10s
    Click Element    xpath = //*[contains(text(),'Approve Event')]

Select Insert Reservation
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[9]/td[2]/a

Select Insert Asset
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[10]/td[2]/a

Select Insert Docket
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr11]/td[2]/a

Select Insert Contract
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[12]/td[2]/a

Select Insert Profile
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[1]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[13]/td[2]/a
