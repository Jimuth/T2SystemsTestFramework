*** Settings ***
Library           XML
Library           ../../../Resources/CustomSelenium2Library.py

*** Keywords ***
Lookup Table Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Lookup Table Management')]

Vehicle Relationship Type
    [Arguments]    ${Code}    ${Description}
    wait until element is visible    xpath=//*[@id='PageSideBar']/tbody/tr[1]/td/a    10s
    Click Element    xpath=//*[@id='PageSideBar']/tbody/tr[1]/td/a
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Vehicle Content Manager
    [Arguments]    ${State}    ${LicensePlate}    ${PlateType}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityVehicles_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_EntityVehicles_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a[1]
    wait until element is visible    xpath=//*[@id='WizardStep1_S1PlateStateValue_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='WizardStep1_S1PlateStateValue_T2DropDownList_DropDownList']    ${State}
    Input Text    xpath=//*[@id='WizardStep1_S1PlateNumberText_T2FormTextBox_TextBox']    ${LicensePlate}
    Select From List    xpath=//*[@id='WizardStep1_S1PlateTypeValue_T2DropDownList_DropDownList']    ${PlateType}
    Click Element    xpath=//*[@id='WizardStep1_SearchButton']
    wait until element is visible    xpath=//*[@ title='Add']    10
    Click Element    xpath=//*[@ title='Add']
    wait until element is visible    xpath=//*[@id='VehicleInsertWizard_VehicleInsertWizard_Next']    10
    Click Element    xpath=//*[@id='VehicleInsertWizard_VehicleInsertWizard_Next']

Enter Detailed Vehicle Information
    [Arguments]    ${VehicleMake}    ${VehicleModel}    ${VehicleStyle}    ${VehicleColor}    ${DescriptionCNL}
    wait until element is visible    xpath=//*[@id='VehicleInsertWizard_WizardStep2Details_S2Make_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='VehicleInsertWizard_WizardStep2Details_S2Make_T2DropDownList_DropDownList']    ${VehicleMake}
    Sleep    5s
    Select From List    xpath=//*[@id='VehicleInsertWizard_WizardStep2Details_S2Model_T2DropDownList_DropDownList']    ${VehicleModel}
    Select From List    xpath=//*[@id='VehicleInsertWizard_WizardStep2Details_S2Style_T2DropDownList_DropDownList']    ${VehicleStyle}
    Select From List    xpath=//*[@id='VehicleInsertWizard_WizardStep2Details_S2Color_T2DropDownList_DropDownList']    ${VehicleColor}
    Click Element    xpath=//*[@id='VehicleInsertWizard_VehicleInsertWizard_Next']
    wait until element is visible    xpath=//*[@id='VehicleInsertWizard_WizardStep3_S3Relationship_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='VehicleInsertWizard_WizardStep3_S3Relationship_T2DropDownList_DropDownList']    ${DescriptionCNL}
    Click Element    xpath=//*[@id='SaveRelationshipButton']

Addresses Content Manager
    [Arguments]    ${Type}    ${PrimaryStreet}    ${City}    ${State}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityAddresses_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_EntityAddresses_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1AddressType_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1AddressType_T2DropDownList_DropDownList']    ${Type}
    Input Text    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1StreetAddress1_T2FormTextBox_TextBox']    ${PrimaryStreet}
    Input Text    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1City_T2FormTextBox_TextBox']    ${City}
    Select From List    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1State_T2DropDownList_DropDownList']    ${State}
    Click Element    xpath=//*[@id='SaveButton']

Addresses Content Manager CV
    [Arguments]    ${Type}    ${PrimaryStreet}    ${City}    ${State}
    Comment    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityAddresses_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    Click Element    xpath=.//*[@id='ctl00_pageContent_EntityAddresses_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a[1]
    wait until element is visible    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1AddressType_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1AddressType_T2DropDownList_DropDownList']    ${Type}
    Input Text    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1StreetAddress1_T2FormTextBox_TextBox']    ${PrimaryStreet}
    Input Text    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1City_T2FormTextBox_TextBox']    ${City}
    Select From List    xpath=//*[@id='AddressInsertWizard_WizardStep1_S1State_T2DropDownList_DropDownList']    ${State}
    Click Element    xpath=//a[@id='AddressInsertWizard_AddressInsertWizard_Next']
    wait until element is visible    xpath=//a[@id='FinishButton']    10s
    Click Element    xpath=//a[@id='FinishButton']

LTM DropDown
    [Arguments]    ${DropdownValue}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_TableList_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_TableList_T2DropDownList_DropDownList']    ${DropdownValue}
    Sleep    3s

Add New Item
    wait until element is visible    xpath=//a[contains(text(),'Add New Item')]    10s
    Click Element    xpath=//a[contains(text(),'Add New Item')]

Insert/Edit Citation Violation Code
    [Arguments]    ${CitationCode}    ${CitationDescription}    ${BaseAmount}    ${GlAccount}    ${LongDescription}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${CitationCode}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${CitationDescription}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_BaseAmountEdit_T2FormTextBox_TextBox']    ${BaseAmount}
    Select From List    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_GlAccountEdit_T2DropDownList_DropDownList']    ${GlAccount}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_LongDescriptionEdit_T2FormTextBox_TextBox']    ${LongDescription}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Lookup Table Management Page
    wait until element is visible    xpath=//span[text()='Lookup Table Management']    10s
    Click Element    //*[@id='aspnetForm']/table/tbody/tr[2]/td/div/a[13]/img

InsertEdit Address Type
    [Arguments]    ${Code}    ${Description}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_SaveButton']    10
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Citation Location
    [Arguments]    ${Code}    ${Description}    ${Zone}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ZoneEdit_T2DropDownList_DropDownList']    ${Zone}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Docket Type
    [Arguments]    ${Code}    ${Description}    ${DocketLocation}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DocketLocation_T2DropDownList_DropDownList']
    Select From List    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DocketLocation_T2DropDownList_DropDownList']    ${DocketLocation}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ItemDuration_T2FormTextBox_TextBox']
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ItemDuration_T2FormTextBox_TextBox']    60
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_SaveButton']
    Click Element    xpath=.//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Appeal Workflow Step
    [Arguments]    ${Code}    ${Description}    ${DocketType}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_WizardStep1_CodeEdit_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_WizardStep1_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_WizardStep1_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_WizardStep1_DocketTypeEdit_T2DropDownList_DropDownList']
    Select From List    xpath=//*[@id='ctl00_pageContent_EditItemWizard_WizardStep1_DocketTypeEdit_T2DropDownList_DropDownList']    ${DocketType}
    Click Element    xpath=//*[@id='ctl00_pageContent_EditItemWizard_SaveButton']

Insert/Edit Permit Control Group CD
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${AvailableForSaleDate}    ${AvailableEndDate}
    wait until element is visible    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    ${Name}
    Select From List    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1DefaultGLAccount_T2DropDownList_DropDownList']    ${DefPerGLAccount}
    Select From List    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1RefundGLAccount_T2DropDownList_DropDownList']    ${RefundGLAccount}
    Click Element    xpath=//input[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1EffRadioCurrent']
    Click Element    xpath=//input[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1ExpPointOfSale']
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1AvailableForSalePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableForSaleDate}
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1SaleEndDatePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableEndDate}
    Click Element    xpath=//*[@id='SaveButton']

Insert/Edit Permit Control Group Basic
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${EffectiveDate}    ${ExpirationDate}    ${AvailableForSaleDate}
    ...    ${AvailableEndDate}
    wait until element is visible    xpath=//span[text()='Name']/../following-sibling::td[1]/input    10s
    Input Text    xpath=//span[text()='Name']/../following-sibling::td[1]/input    ${Name}
    Select From List    xpath=//span[text()='Def Per GL Account']/../following-sibling::td[1]//select    ${DefPerGLAccount}
    Select From List    xpath=//span[text()='Refund GL Account']/../following-sibling::td[1]//select    ${RefundGLAccount}
    Input Text    xpath=//span[text()='Effective Date']/../following-sibling::td//td[3]//input[@type='text']    ${EffectiveDate}
    Click Element    xpath=//span[text()='Expiration Date']/../following-sibling::td//input[@type='radio']
    Input Text    xpath=//span[text()='Expiration Date']/../following-sibling::td//td[3]//input[@type='text']    ${ExpirationDate}
    Input Text    xpath=//*[contains(text(),'Available for Sale Date')]/../following-sibling::td[1]//input    ${AvailableForSaleDate}
    Input Text    xpath=//*[contains(text(),'Available End Date')]/../following-sibling::td[1]//input    ${AvailableEndDate}
    wait until element is visible    xpath=//a[@title='Save']    10
    Click Element    xpath=//a[@title='Save']

Insert/Edit Permit Control Group FED
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${EffectiveDate}    ${AvailableForSaleDate}    ${AvailableEndDate}
    wait until element is visible    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    ${Name}
    Select From List    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1DefaultGLAccount_T2DropDownList_DropDownList']    ${DefPerGLAccount}
    Select From List    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1RefundGLAccount_T2DropDownList_DropDownList']    ${RefundGLAccount}
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1EffectiveOnDatePicker_T2DatePickerTextBox_TextBox']    ${EffectiveDate}
    Click Element    xpath=//input[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1ExpPointOfSale']
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1AvailableForSalePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableForSaleDate}
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1SaleEndDatePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableEndDate}
    Click Element    xpath=//*[@id='SaveButton']

Insert/Edit Permit Control GroupCSP
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${Month}    ${AvailableForSaleDate}    ${AvailableEndDate}
    wait until element is visible    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    10
    Input Text    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    ${Name}
    Select From List    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1ValueType_T2DropDownList_DropDownList']    2
    Input Text    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1DefaultValue_T2FormTextBox_TextBox']    100
    wait until element is visible    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1DefaultGLAccount_T2DropDownList_DropDownList']    20
    Select From List    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1DefaultGLAccount_T2DropDownList_DropDownList']    ${DefPerGLAccount}
    Select From List    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1RefundGLAccount_T2DropDownList_DropDownList']    ${RefundGLAccount}
    Click Element    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1EffPointOfSale']
    Click Element    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1ExpRadioMonthsPast']
    Input Text    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1PastMonths_TextBox']    ${Month}
    Click Element    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1ForceTermCutOff_CheckBox']
    Click Element    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1ForceTypeEOM']
    Input Text    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1AvailableForSalePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableForSaleDate}
    Input Text    //*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1SaleEndDatePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableEndDate}
    wait until element is visible    //*[@id='ValueCredentialInsertEditWizard_SaveButton']    10s
    Click Element    //*[@id='ValueCredentialInsertEditWizard_SaveButton']

Insert/Edit Vehicle Relationship Type
    [Arguments]    ${Code}    ${Description}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Appeal Type
    [Arguments]    ${CodeAppealType}    ${DescriptionApealType}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${CodeAppealType}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${DescriptionApealType}
    Click Element    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_WorkflowStepsEdit_T2SelectableCheckBoxList_CheckBoxList_2']
    Click Element    xpath=//a[@id='ctl00_pageContent_SaveButton']

Insert/Edit Appeal Note Code
    [Arguments]    ${CodeAppelNoteCode}    ${DescriptionApealNoteCode}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${CodeAppelNoteCode}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${DescriptionApealNoteCode}
    Click Element    xpath=//a[@id='ctl00_pageContent_SaveButton']

Insert/Edit Appeal Type ARW
    [Arguments]    ${CodeAppealType}    ${DescriptionApealType}    ${DescriptionaaAW1}    ${DescriptionaaAW2}    ${DescriptionaaAW3}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${CodeAppealType}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${DescriptionApealType}
    Click Element    xpath=//label[text()='${DescriptionaaAW1}']/preceding-sibling::input
    Click Element    xpath=//label[text()='${DescriptionaaAW2}']/preceding-sibling::input
    Click Element    xpath=//label[text()='${DescriptionaaAW3}']/preceding-sibling::input
    Click Element    xpath=//a[@id='ctl00_pageContent_SaveButton']

Appeal Type Configuration
    [Arguments]    ${CodeAppelTypeConfiguration}    ${DescriptionApealTypeConfiguration}    ${AppealType1}    ${usefor}    ${prefix}    ${Filter}
    ...    ${Description}    ${Description1}
    Input Text    xpath=//input[@id='manageAdjudicationTypeConfiguration1_InsertWizard_WizardStep1_txtCode_T2FormTextBox_TextBox']    ${CodeAppelTypeConfiguration}
    Input Text    xpath=//input[@id='manageAdjudicationTypeConfiguration1_InsertWizard_WizardStep1_txtDescription_T2FormTextBox_TextBox']    ${DescriptionApealTypeConfiguration}
    Select From List    xpath=//*[@id='manageAdjudicationTypeConfiguration1_InsertWizard_WizardStep1_lstAppealType_T2DropDownList_DropDownList']    ${AppealType1}
    Select From List    xpath=//*[@id='manageAdjudicationTypeConfiguration1_InsertWizard_WizardStep1_lstSourceType_T2DropDownList_DropDownList']    ${usefor}
    Input Text    xpath=//input[@id='manageAdjudicationTypeConfiguration1_InsertWizard_WizardStep1_txtPrefix_T2FormTextBox_TextBox']    ${prefix}
    sleep    5
    Click Element    xpath=//*[@id='manageAdjudicationTypeConfiguration1_InsertWizard_btnSave']
    wait until element is visible    xpath=//*[@id='tabctrlAppealTypeConfiguration_tabctrlAppealTypeConfiguration_tabWorkflow_btn']    15
    sleep    5
    Click Element    xpath=//*[@id='tabctrlAppealTypeConfiguration_tabctrlAppealTypeConfiguration_tabWorkflow_btn']
    wait until element is visible    xpath=//*[@id='tabctrlAppealTypeConfiguration_tabctrlAppealTypeConfiguration_tabCodes_btn']    15
    sleep    5
    Click Element    xpath=//*[@id='tabctrlAppealTypeConfiguration_tabctrlAppealTypeConfiguration_tabCodes_btn']
    sleep    5
    Click Element    xpath=//*[@id='btnManageCodes']
    sleep    5
    wait until element is visible    xpath=//*[@id='EligibleViolationCodesGrid_Filter_Columns_DropDownList']    15
    Select From List    xpath=//*[@id='EligibleViolationCodesGrid_Filter_Columns_DropDownList']    ${Filter}
    wait until element is visible    xpath=//input[@id='EligibleViolationCodesGrid_Filter_Value_TextBox']    15
    Input Text    xpath=//input[@id='EligibleViolationCodesGrid_Filter_Value_TextBox']    ${Description}
    wait until element is visible    xpath=(//a[text()='Go'])[2]    10
    Click Element    xpath=(//a[text()='Go'])[2]
    Sleep    10
    Click Element    xpath=//td[text()='${Description}']/following-sibling::td[3]/a[text()='Link']
    sleep    5
    Click Element    xpath=//input[@id='tabctrlAppealTypeConfiguration_tabctrlAppealTypeConfiguration_tabExtensions_btn']
    sleep    5
    Click Element    xpath=//*[@id='btnManageExtensions']
    sleep    5
    Click Element    xpath=//a[@id='btnExtensionSave']
    Click Element    xpath=//*[@id='tabctrlAppealTypeConfiguration_tabctrlAppealTypeConfiguration_tabGeneral_btn']
    sleep    5
    Click Element    xpath=//*[@id='manageAdjudicationTypeConfiguration1_InsertWizard_WizardStep1_lnkChangePriority']
    sleep    5
    Select From List    xpath=//*[@name='lstConfigurationPriority$ctl00']    ${Description1}
    sleep    5
    Click Element    //*[@id='lstConfigurationPriority_rightGeneralConfigurationPriorityPanel_dblup']
    sleep    5
    Click Element    xpath=//a[@id='btnSaveConfigurationPriority']
    sleep    5
    Comment    Click Element    xpath=//*[@id='manageAdjudicationTypeConfiguration1_InsertWizard_btnSave']

Insert/Edit Citation Violation Code CAD
    [Arguments]    ${CitationCode}    ${CitationDescription}    ${BaseAmount}    ${GlAccount}    ${LongDescription}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${CitationCode}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${CitationDescription}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_BaseAmountEdit_T2FormTextBox_TextBox']    ${BaseAmount}
    Select From List    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_GlAccountEdit_T2DropDownList_DropDownList']    ${GlAccount}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_LongDescriptionEdit_T2FormTextBox_TextBox']    ${LongDescription}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Docket Location CAD
    [Arguments]    ${Code}    ${Description}    ${StartTimeHr}    ${StartTimeMinutes}    ${StartTimeSeconds}    ${StopTimeHr}
    ...    ${StopTimeMinutes}    ${StopTimeSeconds}
    Input Text    xpath=//input[@name='ctl00$pageContent$editmoddocketlocationCtrl$EditItemWizard$EditItemWizardPanel$CodeEdit$T2FormTextBox$TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Click Element    xpath=//input[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_IsMondayEdit_T2CheckBox_CheckBox']
    Click Element    xpath=//input[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_IsTuesdayEdit_T2CheckBox_CheckBox']
    Click Element    xpath=//input[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_IsWednesdayEdit_T2CheckBox_CheckBox']
    Select From List    xpath=//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_StartTimeSlotEdit_T2FormDatePicker_T2FormDatePicker_hour']    ${StartTimeHr}
    Select From List    xpath=//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_StartTimeSlotEdit_T2FormDatePicker_T2FormDatePicker_minutes']    ${StartTimeMinutes}
    Select From List    xpath=//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_StartTimeSlotEdit_T2FormDatePicker_T2FormDatePicker_am_pm']    ${StartTimeSeconds}
    Select From List    xpath=//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_EndTimeSlotEdit_T2FormDatePicker_T2FormDatePicker_hour']    ${StopTimeHr}
    Select From List    xpath=//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_EndTimeSlotEdit_T2FormDatePicker_T2FormDatePicker_minutes']    ${StopTimeMinutes}
    Select From List    xpath=//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_EndTimeSlotEdit_T2FormDatePicker_T2FormDatePicker_am_pm']    ${StopTimeSeconds}
    Click Element    xpath=//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_SaveButton']

Insert/Edit Docket Location
    [Arguments]    ${Code}    ${Description}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10
    Input Text    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    10
    Input Text    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Select From List    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_StartTimeSlotEdit_T2FormDatePicker_T2FormDatePicker_hour']    5:
    Select From List    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_EndTimeSlotEdit_T2FormDatePicker_T2FormDatePicker_hour']    8:
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_IsMondayEdit_T2CheckBox_CheckBox']    10s
    Click Element    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_IsMondayEdit_T2CheckBox_CheckBox']
    Click Element    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_IsTuesdayEdit_T2CheckBox_CheckBox']
    Click Element    xpath= //*[@id='ctl00_pageContent_editmoddocketlocationCtrl_EditItemWizard_EditItemWizardPanel_IsWednesdayEdit_T2CheckBox_CheckBox']
    Click Element    xpath=.//*[@id='ctl00_pageContent_editmoddocketlocationCtrl_SaveButton']

Docket Type
    [Arguments]    ${CodeDT}    ${DescriptionDT}    ${DocketLocation}    ${DurationDL}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${CodeDT}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${DescriptionDT}
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DocketLocation_T2DropDownList_DropDownList']    ${DocketLocation}
    Sleep    5
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ItemDuration_T2FormTextBox_TextBox']    ${DurationDL}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Permit Number Ranges
    [Arguments]    ${SeriesType}    ${PermitType}    ${SeriesPrefix}    ${SeriesStart}    ${SeriesEnd}    ${SeriesCharWidth}
    ...    ${Description}
    wait until element is visible    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1TypeEdit_T2DropDownList_DropDownList']    10
    Select From List    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1TypeEdit_T2DropDownList_DropDownList']    ${SeriesType}
    Select From List    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1PermissionType_T2DropDownList_DropDownList']    ${PermitType}
    wait until element is visible    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1PrefixEdit_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1PrefixEdit_T2FormTextBox_TextBox']    ${SeriesPrefix}
    Input Text    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1StartEdit_T2FormTextBox_TextBox']    ${SeriesStart}
    Input Text    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1End_T2FormTextBox_TextBox']    ${SeriesEnd}
    Input Text    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1DigitsEdit_T2FormTextBox_TextBox']    ${SeriesCharWidth}
    Input Text    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    select checkbox    xpath=//*[@id='NumberRangeEditWizard_WizardStep1_S1InUse_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='SaveButton']

Insert/Edit General Ledger Account
    [Arguments]    ${GLACode}    ${GLADescription}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${GLACode}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${GLADescription}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Event Group
    [Arguments]    ${EGCode}    ${EGDescription}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${EGCode}
    Input Text    //*[@id='ctl00_pageContent_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${EGDescription}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Event Contact Type
    [Arguments]    ${ECTCode}    ${ECTDescription}    ${ECTContactStyle}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${ECTCode}
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${ECTDescription}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ContactStyleEdit_T2DropDownList_DropDownList']
    Select From List    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ContactStyleEdit_T2DropDownList_DropDownList']    ${ECTContactStyle}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Event Classification
    [Arguments]    ${ECCode}    ${ECDescription}    ${GL ACCOUNT}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${ECCode}
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${ECDescription}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_GLAccount_T2DropDownList_DropDownList']    10S
    Select From List    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_GLAccount_T2DropDownList_DropDownList']    ${GL ACCOUNT}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Event Resource
    [Arguments]    ${ECTCode}    ${ECTDescription}    ${Quantity}    ${Cost}    ${Price}    ${ResourceCategory}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${ECTCode}
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${ECTDescription}
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_QuantityEdit_T2FormTextBox_TextBox']    ${Quantity}
    Click Element    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_QuantityTypeEdit_T2RadioButtonList_RadioButtonList_0']
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CostEdit_T2FormTextBox_TextBox']    ${Cost}
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PriceEdit_T2FormTextBox_TextBox']    ${Price}
    Select From List    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CategoryEdit_T2DropDownList_DropDownList']    ${ResourceCategory}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_SaveButton']    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Insert/Edit Event ResourceSF
    [Arguments]    ${ECTCode}    ${ECTDescription}    ${Quantity}    ${Cost}    ${Price}    ${ResourceCategory}
    wait until element is visible    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${ECTCode}
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${ECTDescription}
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_QuantityEdit_T2FormTextBox_TextBox']    ${Quantity}
    Click Element    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_QuantityTypeEdit_T2RadioButtonList_RadioButtonList_1']
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CostEdit_T2FormTextBox_TextBox']    ${Cost}
    Input Text    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PriceEdit_T2FormTextBox_TextBox']    ${Price}
    Select From List    xpath=.//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CategoryEdit_T2DropDownList_DropDownList']    ${ResourceCategory}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_SaveButton']    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Permit content manager-Sell Flow FED
    [Arguments]    ${PermitNumber}    ${ExpirationDate}    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//input[@id='PermissionSellWizard_WizardStep2_S2ExpirationDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    10
    Input Text    xpath=//input[@id='PermissionSellWizard_WizardStep2_S2ExpirationDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${ExpirationDate}
    Click Element    xpath=(//td[@class='T2FormLabelNotRequired'])[2]
    Sleep    3s
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']
    Click Element    xpath=//*[@id='FinishAndCheckOutButton']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    Click Element    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

FeeSchedule Select FED
    [Arguments]    ${DailyRate}
    wait until element is visible    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a    10
    Click Element    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a
    wait until element is visible    xpath=//a[contains(text(),'Add New Fee Schedule')]    5
    Click Element    xpath=//a[contains(text(),'Add New Fee Schedule')]
    wait until element is visible    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]    5
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_FeeScheduleEditWizard_WizardStep1_right']/span
    sleep    3
    Input Text    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1DailyRate_T2FormTextBox_TextBox']    ${DailyRate}
    wait until element is visible    xpath=//*[@id='SaveButton']    5
    Click Element    xpath=//*[@id='SaveButton']

Click on the Permit Number in the Grid
    [Arguments]    ${PermitNumber}
    wait until element is visible    xpath=//td[text()='${PermitNumber}']/..    10s
    click Element    xpath=//td[text()='${PermitNumber}']/..

Task Scheduler
    wait until element is visible    xpath=//*[@class='PageSideBarItemClosed']//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//*[@class='PageSideBarItemClosed']//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Task Scheduler')]

Task Scheduler Inner Page
    wait until element is visible    xpath=//img[@title='Home']
    click Element    xpath=//img[@title='Home']
    wait until element is visible    xpath=//*[@class='PageSideBarItemClosed']//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//*[@class='PageSideBarItemClosed']//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Task Scheduler')]

Add New Task- Task manager
    [Arguments]    ${TaskName}    ${ScheduleDescription}    ${TaskType}    ${TimePeriod}
    wait until element is visible    xpath=//*[@id='PageSideBar']/tbody/tr[1]/td/a    10s
    click Element    xpath=//*[@id='PageSideBar']/tbody/tr[1]/td/a
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step1DefineScheduledTask_S1TaskName_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step1DefineScheduledTask_S1TaskName_T2FormTextBox_TextBox']    ${TaskName}
    Input Text    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step1DefineScheduledTask_S1TaskDescription_T2FormTextBox_TextBox']    ${ScheduleDescription}
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step1DefineScheduledTask_S1TaskType_T2DropDownList_DropDownList']    ${TaskType}
    sleep    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_ScheduledTaskWizard_Next']
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step2DefineSchedule_S2TimePeriod_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step2DefineSchedule_S2TimePeriod_T2DropDownList_DropDownList']    ${TimePeriod}
    sleep    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_ScheduledTaskWizard_Next']

Define Task Parameters
    [Arguments]    ${SearchType}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC120_LetterCriteriaType_T2DropDownList_DropDownList']
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC120_LetterCriteriaType_T2DropDownList_DropDownList']    ${SearchType}
    Click Element    xpath=//option[contains(text(),'${DescriptionCNL}')]
    Click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC120_VehicleRelationship_ctl01']/span
    wait until element is visible    xpath=//option[contains(text(),'${CustomerSubclassification}')]    10
    Click Element    xpath=//option[contains(text(),'${CustomerSubclassification}')]
    Click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC120_Classification_ctl01']/span
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC120_CitationStatus_LeftBox']/option[5]    10
    Click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC120_CitationStatus_LeftBox']/option[5]
    Click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC120_CitationStatus_ctl01']/span
    wait until element is visible    xpath=//option[contains(text(),'${TypeCNL}')]    10
    Click Element    xpath=//option[contains(text(),'${TypeCNL}')]
    Click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC120_Addresses_ctl01']/span
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_SaveButton']    10
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Define Task Parameters PAR
    [Arguments]    ${RenewalType}    ${CustomerSubclassification}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC570_RenewalType_DropDownList']
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC570_RenewalType_DropDownList']    ${RenewalType}
    Select From List By Index    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC570_PermissionControlGroups_LeftBox']    3
    Click Element    xpath=//*[@id="ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC570_PermissionControlGroups_ctl01"]/span
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC570_Subclassifications_LeftBox']    ${CustomerSubclassification}
    Click Element    xpath=//*[@id="ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC570_Subclassifications_ctl01"]/span
    Click Element    xpath=//a[text()='Save']

Define Task Parameters-Value
    [Arguments]    ${SearchType}    ${Vehicle Association}    ${CustomerSubclassification}    ${CitationStatus}    ${AddressType}    ${LetterTemplate}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_LetterCriteriaType_T2DropDownList_DropDownList']
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_LetterCriteriaType_T2DropDownList_DropDownList']    ${SearchType}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_VehicleRelationship_LeftBox']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_VehicleRelationship_LeftBox']    ${Vehicle Association}
    click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_VehicleRelationship_ctl01']/span
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_Classification_LeftBox']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_Classification_LeftBox']    ${CustomerSubclassification}
    click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_Classification_ctl01']/span
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_CitationStatus_LeftBox']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_CitationStatus_LeftBox']    ${CitationStatus}
    click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_CitationStatus_ctl01']/span
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_Addresses_LeftBox']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_Addresses_LeftBox']    ${AddressType}
    click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_Addresses_ctl01']/span
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_LetterTemplate_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC330_LetterTemplate_T2DropDownList_DropDownList']    ${LetterTemplate}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_SaveButton']    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Report Scheduler
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Report Scheduler')]

Task Wide Variables
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Task Wide Variables')]

Validation Control Groups
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Validation Control Groups')]

Loyalty Program
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Loyalty Program')]

System Settings
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'System Settings')]

Role Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Role Management')]

Permit Number Ranges
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Permit Number Ranges')]

Add New Number Range
    wait until element is visible    //a[contains(text(),'Add New Number Range')]    10
    click Element    //a[contains(text(),'Add New Number Range')]

Add New Control Group
    wait until element is visible    xpath=//a[contains(text(),'Add New Control Group')]    10
    Click Element    xpath=//a[contains(text(),'Add New Control Group')]

Insert/Edit Permit Control Group-ValuePermission
    [Arguments]    ${Name}    ${ValuePermissionType}    ${DefaultValue}    ${DefPerGLAccount}    ${RefundGLAccount}    ${EffectiveDate}
    ...    ${ExpirationDate}    ${AvailableForSaleDate}    ${AvailableEndDate}
    wait until element is visible    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    ${Name}
    Select From List    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1ValueType_T2DropDownList_DropDownList']    ${ValuePermissionType}
    sleep    5
    Input Text    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1DefaultValue_T2FormTextBox_TextBox']    ${DefaultValue}
    Select From List    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1DefaultGLAccount_T2DropDownList_DropDownList']    ${DefPerGLAccount}
    Select From List    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1RefundGLAccount_T2DropDownList_DropDownList']    ${RefundGLAccount}
    Input Text    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1EffectiveOnDatePicker_T2DatePickerTextBox_TextBox']    ${EffectiveDate}
    Input Text    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1ExpirationOnDatePicker_T2DatePickerTextBox_TextBox']    ${ExpirationDate}
    Input Text    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1AvailableForSalePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableForSaleDate}
    Input Text    xpath=//*[@id='ValueCredentialInsertEditWizard_WizardStep1_S1SaleEndDatePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableEndDate}
    Click Element    xpath=//*[@id='ValueCredentialInsertEditWizard_SaveButton']

Activate Sell Button
    [Arguments]    ${LookUpTable}    ${Code}    ${Description}
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Lookup Table Management')]
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_TableList_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_TableList_T2DropDownList_DropDownList']    ${LookUpTable}
    Sleep    5
    click Element    xpath=//a[contains(text(),'Add New Item')]
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']
    wait until element is visible    xpath=//*[@id='PageSideBar']/tbody/tr[91]/td[2]    10s
    Click Element    xpath=//*[@id='PageSideBar']/tbody/tr[91]/td[2]
    Click Element    xpath=//a[contains(text(),'Open/Login Cash Drawer')]
    wait until element is visible    xpath=//*[@id='CashDrawerOpenWizard_WizardStep1_lvCashDrawer_ctrl4_RadioButton1']    10s
    Click Element    xpath=//*[@id='CashDrawerOpenWizard_WizardStep1_lvCashDrawer_ctrl4_RadioButton1']
    Click Element    xpath=//*[@id='OpenButton']

Permit content manager-Sell Flow
    [Arguments]    ${PermitNumber}    ${PaymentMethod}
    wait until element is visible    xpath=//a[contains(text(),'[ Sell ]')]    10
    click Element    xpath=//a[contains(text(),'[ Sell ]')]
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']    10
    Click Element    xpath=//*[@id='FinishAndCheckOutButton']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    Click Element    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

Permit content manager-Sell Flow2
    [Arguments]    ${PermitNumber}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    wait until element is visible    xpath= //a[@id='PermissionSellWizard_PermissionSellWizard_Next']    10
    Click Element    xpath=//a[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath= //a[@id='SaveButton']    10
    Click Element    xpath=//a[@id='SaveButton']

Eligible Pre-Authorized Payment Methods
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_0']    10s
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_0']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_1']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_1']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_2']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_2']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_3']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_3']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_4']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_4']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_5']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_5']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_6']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_6']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_7']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_7']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_8']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_8']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_9']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_9']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_10']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_10']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_11']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_11']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_12']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_12']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_13']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_13']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_14']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_14']
    Sleep    6
    wait until element is visible    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_15']    10
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_EligiblePreAuthPaymentMethods_T2CheckBoxList_CheckBoxList_15']
    Sleep    6

Permit content manager-Sell Flow CC
    [Arguments]    ${PermitNumberCC}    ${CardNumber}    ${CVV}    ${ExpDateFrom}    ${ExpDateTo}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumberCC}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']    10
    Click Element    xpath=//*[@id='FinishAndCheckOutButton']
    wait until element is visible    xpath=//*[@id='Step1FinishButton']    10
    Click Element    xpath=//*[@id='Step1FinishButton']
    wait until element is visible    xpath=//*[@id='txtCardNumber']    10
    Input Text    xpath=//*[@id='txtCardNumber']    ${CardNumber}
    Input Text    xpath=//*[@id='txtCVV']    ${CVV}
    Select From List    xpath=//*[@id='selCardMonExpire']    ${ExpDateFrom}
    Select From List    xpath=//*[@id='selCardYearExpire']    ${ExpDateTo}
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

Third Party Content Manager
    [Arguments]    ${Name}    ${ContactName}
    wait until element is visible    xpath=//*[contains(text(),'Third Parties')]//following-sibling::td[1]/a    10s
    Click Element    xpath=//*[contains(text(),'Third Parties')]//following-sibling::td[1]/a
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_WizardStep1_ThirdPartyNameText_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_WizardStep1_ThirdPartyNameText_T2FormTextBox_TextBox']    ${Name}
    Click Element    xpath=//*[@id='ctl00_pageContent_WizardStep1_SearchButton']
    Sleep    5s
    Click Element    xpath=//*[@id='ctl00_pageContent_WizardStep1_AddButton']
    Sleep    3s
    Click Element    xpath=//*[@id='ThirdPartyInsertWizard_ThirdPartyInsertWizard_Next']
    wait until element is visible    xpath=//*[@id='ThirdPartyInsertWizard_WizardStep2Details_S2ContactName_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ThirdPartyInsertWizard_WizardStep2Details_S2ContactName_T2FormTextBox_TextBox']    ${ContactName}
    Click Element    xpath=//*[@id='SaveButton']
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ThirdPartyInsertWizard_Next']    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_ThirdPartyInsertWizard_Next']
    wait until element is visible    xpath=//a[text()='Finish']    10s
    Click Element    xpath=//a[text()='Finish']

Subclassifications Select
    wait until element is visible    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[3]/a    10
    Click Element    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[3]/a
    wait until element is visible    xpath=//*[@id='EligibleSubclassificationWizard_WizardStep1_SubclassGrid_ctl04_Eligible_CheckBox']
    Click Element    xpath=//*[@id='EligibleSubclassificationWizard_WizardStep1_SubclassGrid_ctl04_Eligible_CheckBox']
    Click Element    xpath=//*[@id='SaveButton']

Subclassifications Select-Value
    [Arguments]    ${Classification}    ${Subclassification}
    wait until element is visible    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[3]/a    10
    Click Element    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[3]/a
    wait until element is visible    xpath=//span[text()='${Classification} - ${Subclassification}']/../preceding-sibling::td[1]/center/span/input
    Click Element    xpath=//span[text()='${Classification} - ${Subclassification}']/../preceding-sibling::td[1]/center/span/input
    Click Element    xpath=//*[@id='SaveButton']

Facilities Select
    [Arguments]    ${Facilities}
    wait until element is visible    xpath=//a[contains(text(), 'Facilities ')]    10
    Click Element    xpath=//a[text()='Facilities (0)']
    wait until element is visible    xpath=//*[@id='ValidFacilitiesWizard_WizardStep1_S1SelectedBelow']
    Click Element    xpath=//*[@id='ValidFacilitiesWizard_WizardStep1_S1SelectedBelow']
    wait until element is visible    xpath=//*[@id='ValidFacilitiesWizard_WizardStep1_S1FacilitiesMulti_LeftBox']    5
    Select From List By Index    xpath=//*[@id='ValidFacilitiesWizard_WizardStep1_S1FacilitiesMulti_LeftBox']    3
    Click Element    //*[@id="ValidFacilitiesWizard_WizardStep1_S1FacilitiesMulti_ValidFacilitiesWizard_WizardStep1_right"]/span
    sleep    3
    Click Element    xpath=//*[@id='SaveButton']

Facilities Select1
    wait until element is visible    xpath=//a[contains(text(), 'Facilities ')]    10
    Click Element    xpath=//a[text()='Facilities (0)']
    sleep    3
    wait until element is visible    xpath=//*[@id='ValidFacilitiesWizard_WizardStep1_S1SelectedBelow']
    Click Element    xpath=//*[@id='ValidFacilitiesWizard_WizardStep1_S1SelectedBelow']
    wait until element is visible    //*[@id='ValidFacilitiesWizard_WizardStep1_S1FacilitiesMulti_LeftBox']/option[3]    5
    Click Element    //*[@id='ValidFacilitiesWizard_WizardStep1_S1FacilitiesMulti_LeftBox']/option[3]
    sleep    3
    wait until element is visible    //*[@id="ValidFacilitiesWizard_WizardStep1_S1FacilitiesMulti_ValidFacilitiesWizard_WizardStep1_right"]/span
    Click Element    //*[@id="ValidFacilitiesWizard_WizardStep1_S1FacilitiesMulti_ValidFacilitiesWizard_WizardStep1_right"]/span
    sleep    3
    Click Element    xpath=//*[@id='SaveButton']

FeeSchedule Select
    [Arguments]    ${RateAmount}
    wait until element is visible    xpath=//a[contains(text(),'Fees (')]    20
    Click Element    xpath=//a[contains(text(),'Fees (')]
    wait until element is visible    xpath=//a[contains(text(),'Add New Fee Schedule')]    5
    Click Element    xpath=//a[contains(text(),'Add New Fee Schedule')]
    wait until element is visible    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]    5
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]
    Click Element    xpath=//*[@class='rightArrow']
    sleep    3
    Click Element    xpath=(//*[@type='checkbox'])[2]
    Input Text    xpath=(//*[@type="text"])[1]    ${RateAmount}
    Click Element    xpath=//*[@id='CreateButton']
    wait until element is visible    xpath=//*[@id='SaveButton']    5
    Click Element    xpath=//*[@id='SaveButton']

FeeSchedule Select CSP
    [Arguments]    ${RateAmount}
    wait until element is visible    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a    10
    Click Element    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a
    wait until element is visible    xpath=//a[contains(text(),'Add New Fee Schedule')]    5
    Click Element    xpath=//a[contains(text(),'Add New Fee Schedule')]
    wait until element is visible    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]    5
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]
    sleep    2
    Click Element    //*[@class='rightArrow']
    sleep    3
    Input Text    xpath=(//*[@type="text"])[1]    ${RateAmount}
    wait until element is visible    xpath=//*[@id='SaveButton']    5
    Click Element    xpath=//*[@id='SaveButton']

FeeSchedule Select Value Credential
    [Arguments]    ${RateAmountVC}
    wait until element is visible    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a    10
    Click Element    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a
    wait until element is visible    xpath=//a[contains(text(),'Add New Fee Schedule')]    5
    Click Element    xpath=//a[contains(text(),'Add New Fee Schedule')]
    wait until element is visible    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]    5
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_FeeScheduleEditWizard_WizardStep1_right']/span
    sleep    3
    Input Text    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1CostPerUnit_T2FormTextBox_TextBox']    ${RateAmountVC}
    Click Element    xpath=//*[@id='SaveButton']

FeeSchedule Renewals
    [Arguments]    ${RenewalDescription}    ${ExpirationDateUpon}    ${RenewalType}    ${TermType}    ${TermLength}    ${TotalFeeAmount}
    ...    ${RenewalPeriodStarts}    ${GracePeriod}
    wait until element is visible    xpath=//*[@id='FeeScheduleList_UpdatePanel']/table/tbody/tr[3]/td[3]/a    10
    Click Element    xpath=//*[@id='FeeScheduleList_UpdatePanel']/table/tbody/tr[3]/td[3]/a
    wait until element is visible    xpath=//*[@id='PageSideBar']/tbody/tr[1]/td/a
    Click Element    xpath=//*[@id='PageSideBar']/tbody/tr[1]/td/a
    wait until element is visible    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']    ${RenewalDescription}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalCondition_T2DropDownList_DropDownList']    ${ExpirationDateUpon}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalSchedType_T2DropDownList_DropDownList']    ${RenewalType}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermType_T2DropDownList_DropDownList']    ${TermType}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermLength_T2FormTextBox_TextBox']    ${TermLength}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']    ${TotalFeeAmount}
    Click Element    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1AutoRenewInBatch_T2CheckBox_CheckBox']
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalPeriodStarts']    ${RenewalPeriodStarts}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1GracePeriod']    ${GracePeriod}
    Click Element    xpath=//*[@id='SaveButton']

Back to the List
    wait until element is visible    xpath=//*[@id='BackToListLink']    5
    Click Element    xpath=//*[@id='BackToListLink']
    wait until element is visible    xpath=//*[@id='BackToListLink']    5
    Click Element    xpath=//*[@id='BackToListLink']
    wait until element is visible    xpath=//*[@id='Form1']/table/tbody/tr[3]/td[2]/div[1]/span    5

Back to the Control Group List
    wait until element is visible    xpath=//*[@id='BackToListLink']    5
    Click Element    xpath=//*[@id='BackToListLink']
    wait until element is visible    xpath=//*[@id='Form1']/table/tbody/tr[3]/td[2]/div[1]/span    5

Click_Control_Groups-CD
    wait until element is visible    xpath=//*[@id='NumberRangeList_page_2']    10
    Click Element    xpath=//*[@id='NumberRangeList_page_2']
    Sleep    10
    wait until element is visible    //a[@href='/UWMADQA1/POWERPARK/config/permission/controlGroupView.aspx?rangeId=${CGRangeIDCD}']    10
    Click Element    //a[@href='/UWMADQA1/POWERPARK/config/permission/controlGroupView.aspx?rangeId=${CGRangeIDCD}']

Renewals Schedule
    [Arguments]    ${RenewalDescription}    ${ExpirationDateUpon}    ${RenewalType}    ${TermType}    ${TermLength}    ${TotalFeeAmount}
    ...    ${RenewalPeriodStarts}    ${GracePeriod}
    wait until element is visible    xpath=//a[contains(text(), 'Renewals ')]    10
    Click Element    xpath=//a[contains(text(), 'Renewals ')]
    wait until element is visible    xpath=//a[contains(text(), 'Add New Renewal Schedule')]
    Click Element    xpath=//a[contains(text(), 'Add New Renewal Schedule')]
    wait until element is visible    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']    ${RenewalDescription}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalCondition_T2DropDownList_DropDownList']    ${ExpirationDateUpon}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalSchedType_T2DropDownList_DropDownList']    ${RenewalType}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermType_T2DropDownList_DropDownList']    ${TermType}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermLength_T2FormTextBox_TextBox']    ${TermLength}
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']
    Sleep    3s
    Input Text    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']    ${TotalFeeAmount}
    Click Element    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1AutoRenewInBatch_T2CheckBox_CheckBox']
    Sleep    3s
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalPeriodStarts']    ${RenewalPeriodStarts}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1GracePeriod']    ${GracePeriod}
    Click Element    xpath=//*[@id='SaveButton']

Renewals Schedule Refund
    [Arguments]    ${RenewalDescription}    ${ExpirationDateUpon}    ${RenewalType}    ${TermType}    ${TermLength}    ${TotalFeeAmount}
    ...    ${RenewalPeriodStarts}    ${GracePeriod}    ${RefundValue}
    wait until element is visible    xpath=//a[contains(text(), 'Renewals ')]    10
    Click Element    xpath=//a[contains(text(), 'Renewals ')]
    wait until element is visible    xpath=//a[contains(text(), 'Add New Renewal Schedule')]
    Click Element    xpath=//a[contains(text(), 'Add New Renewal Schedule')]
    wait until element is visible    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']    ${RenewalDescription}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalCondition_T2DropDownList_DropDownList']    ${ExpirationDateUpon}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalSchedType_T2DropDownList_DropDownList']    ${RenewalType}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermType_T2DropDownList_DropDownList']    ${TermType}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermLength_T2FormTextBox_TextBox']    ${TermLength}
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']
    Sleep    3s
    Input Text    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']    ${TotalFeeAmount}
    Click Element    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1AutoRenewInBatch_T2CheckBox_CheckBox']
    Sleep    3s
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalPeriodStarts']    ${RenewalPeriodStarts}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1GracePeriod']    ${GracePeriod}
    Click Element    xpath=//span[text()='Refund Sale Value Less']/../preceding-sibling::td/input
    Input Text    xpath=//span[text()='Refund Sale Value Less']/../following-sibling::td/input    ${RefundValue}
    Click Element    xpath=//*[@id='SaveButton']

Click_Control_Groups-PCC
    wait until element is visible    xpath=//span[contains(text(),'Permit Number Range Management')]    10
    Click Element    xpath=//*[@id='NumberRangeList_page_2']
    wait until element is visible    xpath=//span[contains(text(),'Permit Number Range Management')]    10
    Sleep    10
    wait until element is visible    //a[@href='/UWMADQA1/POWERPARK/config/permission/controlGroupView.aspx?rangeId=${CGRangeIDPCC}']    10
    Click Element    //a[@href='/UWMADQA1/POWERPARK/config/permission/controlGroupView.aspx?rangeId=${CGRangeIDPCC}']

Violation Fine Escalation & Accumulation
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Violation Fine Escalation & Accumulation')]

Letter Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Letter Management')]

Misc. Sale Items/Fees
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Misc. Sale Items/Fees')]

Add New Misc. Item/Fee
    wait until element is visible    xpath=//a[contains(text(), 'Add New Misc. Item/Fee')]    10s
    Click Element    xpath=//a[contains(text(), 'Add New Misc. Item/Fee')]

External Sale Items
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'External Sale Items')]

Data Field Definitions
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Data Field Definitions')]

Data Field Definitions Page
    [Arguments]    ${Table}    ${Field}
    wait until element is visible    xpath=//select[@id='FieldDefPanel_TableList_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//select[@id='FieldDefPanel_TableList_T2DropDownList_DropDownList']    ${Table}
    Sleep    4s
    Select From List    xpath=//select[@id='FieldDefPanel_FieldList_DropDownList']    ${Field}
    Sleep    3s
    Click Element    xpath=//a[text()='Add New']
    Sleep    3s

Insert/Edit Field Definitions Page
    [Arguments]    ${FieldName}    ${DataType}    ${DisplayLabel}    ${SelectRoles}    ${MaxLength}
    wait until element is visible    xpath=//input[@id='EditWizardPanel_FieldNameEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//input[@id='EditWizardPanel_FieldNameEdit_T2FormTextBox_TextBox']    ${FieldName}
    Select From List    xpath=//select[@id='EditWizardPanel_DataTypeEdit_T2DropDownList_DropDownList']    ${DataType}
    Sleep    3s
    Input Text    xpath=//input[@id='EditWizardPanel_DisplayLabel_T2FormTextBox_TextBox']    ${DisplayLabel}
    Sleep    3s
    Click Element    xpath=//input[@id='EditWizardPanel_EnabledEdit_T2CheckBox_CheckBox']
    Select From List    xpath=//select[@id='EditWizardPanel_FieldRoles_LeftBox']    ${SelectRoles}
    Click Element    xpath=//a[@id='EditWizardPanel_FieldRoles_ctl01']/span
    Sleep    3s
    Input Text    xpath=//input[@id='EditWizardPanel_MaxLength_T2FormTextBox_TextBox']    ${MaxLength}
    Click Element    xpath=//a[text()='Save']

Insert/Edit Field Definitions Page1
    [Arguments]    ${FieldName}    ${DataType}    ${DisplayLabel}    ${SelectRoles1}    ${SelectRoles2}    ${SelectRoles3}
    ...    ${MaxLength}
    wait until element is visible    xpath=//input[@id='EditWizardPanel_FieldNameEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//input[@id='EditWizardPanel_FieldNameEdit_T2FormTextBox_TextBox']    ${FieldName}
    Select From List    xpath=//select[@id='EditWizardPanel_DataTypeEdit_T2DropDownList_DropDownList']    ${DataType}
    Sleep    3s
    Input Text    xpath=//input[@id='EditWizardPanel_DisplayLabel_T2FormTextBox_TextBox']    ${DisplayLabel}
    Sleep    3s
    Click Element    xpath=//input[@id='EditWizardPanel_EnabledEdit_T2CheckBox_CheckBox']
    Select From List    xpath=//select[@id='EditWizardPanel_FieldRoles_LeftBox']    ${SelectRoles1}
    Click Element    xpath=//a[@id='EditWizardPanel_FieldRoles_ctl01']/span
    Sleep    3s
    Select From List    xpath=//select[@id='EditWizardPanel_FieldRoles_LeftBox']    ${SelectRoles2}
    Click Element    xpath=//a[@id='EditWizardPanel_FieldRoles_ctl01']/span
    Sleep    3s
    Select From List    xpath=//select[@id='EditWizardPanel_FieldRoles_LeftBox']    ${SelectRoles3}
    Click Element    xpath=//a[@id='EditWizardPanel_FieldRoles_ctl01']/span
    Sleep    3s
    Input Text    xpath=//input[@id='EditWizardPanel_MaxLength_T2FormTextBox_TextBox']    ${MaxLength}
    Click Element    xpath=//a[text()='Save']

Insert/Edit Permit Control Group SBPM
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${Months}    ${AvailableForSaleDate}    ${AvailableEndDate}
    wait until element is visible    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1PCGName_T2FormTextBox_TextBox']    ${Name}
    Select From List    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1DefaultGLAccount_T2DropDownList_DropDownList']    ${DefPerGLAccount}
    Select From List    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1RefundGLAccount_T2DropDownList_DropDownList']    ${RefundGLAccount}
    Click Element    xpath=//input[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1EffPointOfSale']
    Click Element    xpath=//input[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1ExpRadioMonthsPast']
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1PastMonths_TextBox']    ${Months}
    Click Element    xpath=//input[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1ForceTermCutOff_CheckBox']
    Click Element    xpath=//input[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1ForceTypeEOM']
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1AvailableForSalePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableForSaleDate}
    Input Text    xpath=//*[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1SaleEndDatePicker_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${AvailableEndDate}
    Click Element    xpath=//*[@id='SaveButton']

FeeSchedule Select SBP
    [Arguments]    ${SaleFee}
    wait until element is visible    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a    10
    Click Element    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a
    wait until element is visible    xpath=//a[contains(text(),'Add New Fee Schedule')]    5
    Click Element    xpath=//a[contains(text(),'Add New Fee Schedule')]
    wait until element is visible    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]    5
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_FeeScheduleEditWizard_WizardStep1_right']/span
    sleep    3
    Input Text    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']    ${SaleFee}
    wait until element is visible    xpath=//*[@id='SaveButton']    5
    Click Element    xpath=//*[@id='SaveButton']

Bulk Permit Content Manager
    [Arguments]    ${NumberRange}    ${PermitStart}    ${PermitEnd}
    wait until element is visible    xpath=//*[contains(text(), 'Bulk Permits')]/following-sibling::td[1]/a[text()='[ Add ]']    10s
    Click Element    xpath=//*[contains(text(), 'Bulk Permits')]/following-sibling::td[1]/a[text()='[ Add ]']
    wait until element is visible    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep1_S1NumberRange_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep1_S1NumberRange_T2DropDownList_DropDownList']    ${NumberRange}
    wait until element is visible    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep1_S1PermitStartNum_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep1_S1PermitStartNum_T2FormTextBox_TextBox']    ${PermitStart}
    Input Text    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep1_S1PermitEndNum_T2FormTextBox_TextBox']    ${PermitEnd}
    Click Element    xpath=//a[text()='Next']

Enter Key Information Bulk Permit
    [Arguments]    ${EffectiveDate}    ${ExpirationDate}
    wait until element is visible    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep2_S2EffectiveDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep2_S2EffectiveDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${EffectiveDate}
    Input Text    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep2_S2ExpirationDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${ExpirationDate}
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//table[@id='BulkPermissionInsertWizard_WizardStep3_ctlValidLocations_tvPermitLocations_item_1']/tbody/tr/td[4]/input    10s
    Click Element    xpath=//table[@id='BulkPermissionInsertWizard_WizardStep3_ctlValidLocations_tvPermitLocations_item_1']/tbody/tr/td[4]/input
    Click Element    xpath=//a[text()='Finish']

Enter Key Information Bulk Permit POS
    [Arguments]    ${ExpirationDate}
    wait until element is visible    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep2_S2EffectiveDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep2_S2ExpirationDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${ExpirationDate}
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//table[@id='BulkPermissionInsertWizard_WizardStep3_ctlValidLocations_tvPermitLocations_item_1']/tbody/tr/td[4]/input    10s
    Click Element    xpath=//table[@id='BulkPermissionInsertWizard_WizardStep3_ctlValidLocations_tvPermitLocations_item_1']/tbody/tr/td[4]/input
    Click Element    xpath=//a[text()='Finish']

Enter Key Information Bulk Permit FD
    wait until element is visible    xpath=//*[@id='BulkPermissionInsertWizard_WizardStep2_S2EffectiveDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    10s
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//table[@id='BulkPermissionInsertWizard_WizardStep3_ctlValidLocations_tvPermitLocations_item_1']/tbody/tr/td[4]/input    10s
    Click Element    xpath=//table[@id='BulkPermissionInsertWizard_WizardStep3_ctlValidLocations_tvPermitLocations_item_1']/tbody/tr/td[4]/input
    Click Element    xpath=//a[text()='Finish']

Click on Bulk Permit in the Grid
    wait until element is visible    xpath=//*[contains(text(), 'Bulk Permits')]/../../../../../following-sibling::tr[2]    10s
    Click Element    xpath=//*[contains(text(), 'Bulk Permits')]/../../../../../following-sibling::tr[2]

Add to Basket
    [Arguments]    ${PaymentMethod}
    wait until element is visible    xpath=//a[contains(text(), 'Add to Basket')]    10s
    Click Element    xpath=//a[contains(text(), 'Add to Basket')]
    wait until element is visible    xpath=//a[text()='[ Check Out ]']    10s
    Click Element    xpath=//a[text()='[ Check Out ]']
    wait until element is visible    xpath=//a[text()='Next']    10s
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10s
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//a[text()='Finish']    10s
    Click Element    xpath=//a[text()='Finish']
    wait until element is visible    xpath=//a[text()='OK']    10s
    Click Element    xpath=//a[text()='OK']

Vehicle Content Manager BT
    [Arguments]    ${State}    ${LicensePlate}    ${PlateType}    ${Type}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityVehicles_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    Click Element    xpath=//*[@id='ctl00_pageContent_EntityVehicles_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='WizardStep1_S1PlateStateValue_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='WizardStep1_S1PlateStateValue_T2DropDownList_DropDownList']    ${State}
    Input Text    xpath=//*[@id='WizardStep1_S1PlateNumberText_T2FormTextBox_TextBox']    ${LicensePlate}
    Select From List    xpath=//*[@id='WizardStep1_S1PlateTypeValue_T2DropDownList_DropDownList']    ${PlateType}
    Click Element    xpath=//*[@id='WizardStep1_SearchButton']
    Sleep    5s
    Click Element    xpath=//td[text()='${LicensePlate}']/..
    Sleep    5s
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//*[@id='WizardStep3_S3Relationship_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='WizardStep3_S3Relationship_T2DropDownList_DropDownList']    ${Type}
    Click Element    xpath=//a[text()='Finish']

Boot Content Manager
    [Arguments]    ${Type}    ${CustomInteger}    ${CustomText}
    wait until element is visible    xpath=//*[contains(text(), 'Boot/Tows')]/following-sibling::td[1]/a[text()='[ Add ]']    10s
    Click Element    xpath=//*[contains(text(), 'Boot/Tows')]/following-sibling::td[1]/a[text()='[ Add ]']
    wait until element is visible    xpath=//a[text()='Next']    10s
    Click Element    xpath=//*[text()='${Type}']/../input
    wait until element is visible    xpath=//a[text()='Next']    10s
    Click Element    xpath=//a[text()='Next']
    Input Text    xpath=//*[@id='BootTowInsertWizard_WizardStep2_CustomFields_Custom_CUSTOMINTG_T2FormTextBox_TextBox']    ${CustomInteger}
    Input Text    xpath=//*[@id='BootTowInsertWizard_WizardStep2_CustomFields_Custom_CUSTOMTXT_T2FormTextBox_TextBox']    ${CustomText}
    Click Element    xpath=//a[text()='Save']

Edit Boot/Tow Information
    [Arguments]    ${Type}    ${CustomIntegerNew}    ${CustomTextNew}
    wait until element is visible    xpath=//td[text()='${Type}']/..    10s
    Click Element    xpath=//td[text()='${Type}']/..
    wait until element is visible    xpath=//a[text()='Edit Boot/Tow']    10s
    Click Element    xpath=//a[text()='Edit Boot/Tow']
    wait until element is visible    xpath=//a[text()='Save']    10s
    Input Text    xpath=//*[@id='BootTowEditWizard_WizardStep1_CustomFields_Custom_CUSTOMINTG_T2FormTextBox_TextBox']    ${CustomIntegerNew}
    Input Text    xpath=//*[@id='BootTowEditWizard_WizardStep1_CustomFields_Custom_CUSTOMTXT_T2FormTextBox_TextBox']    ${CustomTextNew}
    Click Element    xpath=//a[text()='Save']

Click on the Vehicle Number in the Grid
    [Arguments]    ${LicensePlate}
    wait until element is visible    xpath=//td[contains(text(), "${LicensePlate}")]/..    10s
    click Element    xpath=//td[contains(text(), "${LicensePlate}")]/..

Configuration Table Role Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Configuration Table Role Management')]

Synonym Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Synonym Management')]

Payment Eligibility Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Payment Eligibility Management')]

Occupancy/Pricing Schedule Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Occupancy/Pricing Schedule Management')]

System Time Schedule Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'System Time Schedule Management')]

Cashier Station Charge Types
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Cashier Station Charge Types')]

DCS Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'DCS Management')]

Asset Work Schedules
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Asset Work Schedules')]

Discount Time Schedules
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Discount Time Schedules')]

Mobile Devices
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Mobile Devices')]

Permit Content Manager
    [Arguments]    ${PermitNumber}    ${ExpDate}    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']    10
    Input Text    xpath=//*[@id="PermissionSellWizard_WizardStep2_S2ExpirationDate_T2FormDatePicker_T2DatePickerTextBox_TextBox"]    ${ExpDate}
    Click Element    xpath=//*[@id='FinishAndCheckOutButton']
    sleep    5
    Click Element    xpath=//*[@id='FinishAndCheckOutButton']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    Click Element    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

Permit Content Manager-SaveAndSellPermit
    [Arguments]    ${PermitNumber}    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']    10
    Click Element    xpath=//*[@id='FinishAndCheckOutButton']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    Click Element    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

Select Vehicle
    [Arguments]    ${State}    ${LicensePlate}    ${PlateType}
    wait until element is visible    xpath=//*[@id='WizardStep1_S1PlateStateValue_T2DropDownList_DropDownList']
    Select From List    xpath=//*[@id='WizardStep1_S1PlateStateValue_T2DropDownList_DropDownList']    ${State}
    Input Text    xpath=//*[@id="WizardStep1_S1PlateNumberText_T2FormTextBox_TextBox"]    ${LicensePlate}
    Select From List    xpath=//*[@id='WizardStep1_S1PlateTypeValue_T2DropDownList_DropDownList']    ${PlateType}
    Click Element    xpath=//*[@id='WizardStep1_SearchButton']
    wait until element is visible    xpath=//*[@id='WizardStep1_AddButton']
    Click Element    xpath=//*[@id='WizardStep1_AddButton']
    wait until element is visible    xpath=//*[@id='VehicleInsertWizard_VehicleInsertWizard_Next']
    Click Element    xpath=//*[@id='VehicleInsertWizard_VehicleInsertWizard_Next']

Click VechilesLink- Summary Page
    wait until element is visible    xpath=(//a[@title='[ Link ]'])[1]
    Click Element    xpath=(//a[@title='[ Link ]'])[1]

Enter Vehicle Details
    [Arguments]    ${VehicleMake}    ${VehicleModel}    ${Year}    ${Type2}
    wait until element is visible    xpath=//*[@id='VehicleInsertWizard_WizardStep2Details_S2Make_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='VehicleInsertWizard_WizardStep2Details_S2Make_T2DropDownList_DropDownList']    ${VehicleMake}
    Sleep    6s
    Select From List    xpath=//*[@id='VehicleInsertWizard_WizardStep2Details_S2Model_T2DropDownList_DropDownList']    ${VehicleModel}
    Input Text    xpath=//*[@id='VehicleInsertWizard_WizardStep2Details_S2YearOfManufacture_T2FormTextBox_TextBox']    ${Year}
    Click Element    xpath=//*[@id='VehicleInsertWizard_VehicleInsertWizard_Next']
    wait until element is visible    xpath=//*[@id='VehicleInsertWizard_WizardStep3_S3Relationship_T2DropDownList_DropDownList']    10s
    Select From List    //*[@id='VehicleInsertWizard_WizardStep3_S3Relationship_T2DropDownList_DropDownList']    ${Type2}
    wait until element is visible    xpath=//*[@id='SaveRelationshipButton']    10s
    Click Element    xpath=//*[@id='SaveRelationshipButton']

ConfigurationMisc
    [Arguments]    ${DropdownValue}
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    Click Element    xpath=//td[contains(text(),'Configuration')]
    wait until element is visible    xpath= //*[contains(text(),'Misc. Sale Items/Fees')]    10s
    Click Element    xpath=//*[contains(text(),'Misc. Sale Items/Fees')]
    wait until element is visible    xpath=//*[contains(text(),'Misc. Sale Items/Fees')]    10s
    Click Element    Xpath=//a[contains(text(), 'Add New Misc. Item/Fee')]

Insert/Edit Misc. Sale Item/Fee
    [Arguments]    ${Description}    ${MiscCategory}    ${Amount}    ${GlAccount}
    Input Text    Xpath=//*[@id='EditWizard_WizardStep1_Name_T2FormTextBox_TextBox']    ${Description}
    Select From List    Xpath=//*[@id='EditWizard_WizardStep1_Category_T2DropDownList_DropDownList']    ${MiscCategory}
    Input Text    Xpath=//*[@id='EditWizard_WizardStep1_Price_T2FormTextBox_TextBox']    ${Amount}
    Sleep    2s
    wait until element is visible    Xpath=//*[@id='EditWizard_WizardStep1_GLAccount_T2DropDownList_DropDownList']    20s
    Select From List    Xpath=//*[@id='EditWizard_WizardStep1_GLAccount_T2DropDownList_DropDownList']    ${GlAccount}
    wait until element is visible    //*[@id='EditWizard_WizardStep1_IsActive_T2CheckBox_CheckBox']    10s
    Click Element    //*[@id='EditWizard_WizardStep1_IsActive_T2CheckBox_CheckBox']
    Click Element    Xpath=//*[@id='SaveButton']

Select Misc Sale Item2
    wait until element is visible    xpath=//*[@id='Form1']/table/tbody/tr[1]/td/table/tbody/tr/td[3]/table/tbody/tr[2]/td[4]/a
    Click Element    xpath=//*[@id='Form1']/table/tbody/tr[1]/td/table/tbody/tr/td[3]/table/tbody/tr[2]/td[4]/a
    wait until element is visible    xpath=//*[@id='MiscSaleItemWizard']/table/tbody/tr[3]/td/table/tbody/tr/td/table[1]/tbody/tr[7]/td[1]
    Click Element    xpath=//*[contains(text(),'[ Check Out ]

Selection Basket Page
    [Arguments]    ${PaymentMethod}    ${Reference}
    wait until element is visible    xpath=//a[contains(text(),'Check Out')]    10
    Click Element    Xpath=//a[contains(text(),'Check Out')]
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    Click Element    Xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10s
    select from list    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    Sleep    2s
    Input Text    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentReferenceText_TextBox']    ${Reference}
    Click Element    Xpath=//*[@id='FinishButton']

Add Misc Item In Selection Basket
    wait until element is visible    xpath=//a[contains(text(),'[ Add Misc. Item ]')]    10
    Click Element    xpath=//a[contains(text(),'[ Add Misc. Item ]')]
    Sleep    5

Deactive Permit
    [Arguments]    ${DeactivateReason}    ${Address}
    wait until element is visible    xpath=//a[contains(text(),'Deactivate')]    10s
    Click Element    xpath=//a[contains(text(),'Deactivate')]
    wait until element is visible    xpath=//*[@id='PermissionSuspendRevokeWizard_WizardStep1_S1Reason_T2DropDownList_DropDownList']    10s
    select From List    xpath=//*[@id='PermissionSuspendRevokeWizard_WizardStep1_S1Reason_T2DropDownList_DropDownList']    ${DeactivateReason}
    Click Element    xpath=//*[@id='PermissionSuspendRevokeWizard_WizardStep1_S1LetterEdit_T2CheckBox_CheckBox']
    wait until element is visible    xpath=//*[@id='PermissionSuspendRevokeWizard_WizardStep1_S1Address_T2DropDownList_DropDownList']    10s
    Click Element    xpath=//*[@id='PermissionSuspendRevokeWizard_WizardStep1_S1Address_T2DropDownList_DropDownList']
    Click Element    xpath=//option[contains(text(), 'Indianapolis')]
    Click Element    xpath=//*[@id='SaveButton']

Reactive Permit
    wait until element is visible    xpath=//a[contains(text(),'Reactivate')]    10s
    Click Element    xpath=//a[contains(text(),'Reactivate')]

Confirm Possession
    wait until element is visible    xpath=//a[contains(text(), 'Confirm Possession')]    10s
    Click Element    xpath=//a[contains(text(), 'Confirm Possession')]

Edit Permit
    [Arguments]    ${ExpirationDate}
    wait until element is visible    xpath=//*[contains(text(), 'Delete Permit')]/../preceding-sibling::tr[1]/td/a[contains(text(), 'Edit Permit')]    10s
    click Element    xpath=//*[contains(text(), 'Delete Permit')]/../preceding-sibling::tr[1]/td/a[contains(text(), 'Edit Permit')]
    wait until element is visible    xpath=//*[@id='PermissionEditWizard_WizardStep1_S1ExpirationDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']
    Input text    xpath=//*[@id='PermissionEditWizard_WizardStep1_S1ExpirationDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${ExpirationDate }
    Click Element    xpath=//*[@id='SaveButton']

Mark Missing
    [Arguments]    ${MissingReason}    ${Address}
    wait until Element is visible    xpath=//a[contains(text(),'Missing')]    10s
    Click Element    xpath=//a[contains(text(),'Missing')]
    wait until Element is visible    xpath=//*[@id='PermissionLostStolenWizard_WizardStep1_S1Reason_T2DropDownList_DropDownList']    10s
    select From List    xpath=//*[@id='PermissionLostStolenWizard_WizardStep1_S1Reason_T2DropDownList_DropDownList']    ${MissingReason}
    wait until Element is visible    xpath=//*[@id='PermissionLostStolenWizard_WizardStep1_S1LetterEdit_T2CheckBox_CheckBox']    5s
    Click Element    xpath=//*[@id='PermissionLostStolenWizard_WizardStep1_S1LetterEdit_T2CheckBox_CheckBox']
    wait until element is visible    xpath=//*[@id='PermissionLostStolenWizard_WizardStep1_S1Address_T2DropDownList_DropDownList']    5s
    Click Element    xpath=//*[@id='PermissionLostStolenWizard_WizardStep1_S1Address_T2DropDownList_DropDownList']
    Click Element    xpath=//option[contains(text(), 'Indianapolis')]
    Click Element    xpath=//*[@id='SaveButton']

Return Permit
    [Arguments]    ${ReturnReason}
    wait until element is visible    xpath=//a[contains(text(), 'Return Permit')]    10
    Click Element    xpath=//a[contains(text(), 'Return Permit')]
    Select From List    xpath=//*[@id='ctl00_pageContent_WizardStep1_S1Reason_T2DropDownList_DropDownList']    ${ReturnReason}
    Click Element    xpath=//a[text()='Finish']

Click on the Customer in the Grid
    [Arguments]    ${FirstName}
    wait until element is visible    xpath=//td[contains(text(), '${FirstName}')]/..    10s
    click Element    xpath=//td[contains(text(), '${FirstName}')]/..

Select a Configuration Category_System
    [Arguments]    ${SMTPServer}    ${SMTPPort}    ${EmailAddress}
    wait until element is visible    xpath=//a[text()='[ System ]']    10s
    Click Element    xpath=//a[text()='[ System ]']
    Input Text    xpath=//input[@id='WizardStep1_SMTPServer_T2FormTextBox_TextBox']    ${SMTPServer}
    Input Text    xpath=//input[@id='WizardStep1_SMTPPort_T2FormTextBox_TextBox']    ${SMTPPort}
    Input Text    xpath=//input[@id='WizardStep1_EmailAddress_T2FormTextBox_TextBox']    ${EmailAddress}
    Click Element    xpath=//a[text()='Save']

Send Email
    [Arguments]    ${To}    ${Subject}    ${Body}
    wait until element is visible    xpath=//a[contains(text(), 'Send Email')]    10
    click Element    xpath=//a[contains(text(), 'Send Email')]
    wait until element is visible    xpath=//input[@id='SendCustomerEmailWizard_WizardStep1_txtToAddress_T2FormTextBox_TextBox']    10
    Input Text    xpath=//input[@id='SendCustomerEmailWizard_WizardStep1_txtToAddress_T2FormTextBox_TextBox']    ${To}
    Input Text    xpath=//input[@id='SendCustomerEmailWizard_WizardStep1_txtSubject_T2FormTextBox_TextBox']    ${Subject}
    Input Text    xpath=//textarea[@id='SendCustomerEmailWizard_WizardStep1_txtBody_T2FormTextBox_TextBox']    ${Body}
    wait until element is visible    xpath=//a[text()='Finish']
    Click Element    xpath=//a[text()='Finish']

View Letter History
    wait until element is visible    xpath=//a[contains(text(), 'View Letter History')]    10
    click Element    xpath=//a[contains(text(), 'View Letter History')]

FeeSchedule Select for Refund Schedule
    [Arguments]    ${RateAmount}    ${RefundSchedule}
    wait until element is visible    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a    10
    Click Element    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a
    wait until element is visible    xpath=//a[contains(text(),'Add New Fee Schedule')]    5
    Click Element    xpath=//a[contains(text(),'Add New Fee Schedule')]
    wait until element is visible    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]    5
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_FeeScheduleEditWizard_WizardStep1_ctl00_right']/span
    sleep    3
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1RateType_T2RadioButtonList_RadioButtonList_0']
    Input Text    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1RateAmount_T2FormTextBox_TextBox']    ${RateAmount}
    wait until element is visible    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1RefundPercentRadio']    5
    click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1RefundPercentRadio']
    wait until element is visible    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1RefundPercentText_TextBox']    5
    Input text    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1RefundPercentText_TextBox']    ${RefundSchedule}
    Click Element    xpath=//*[@id='CreateButton']
    wait until element is visible    xpath=//*[@id='SaveButton']    5
    Click Element    xpath=//*[@id='SaveButton']

FeeSchedule Select RefundValueLess
    [Arguments]    ${RateAmount}    ${RefundSchedule}
    wait until element is visible    xpath=//a[contains(text(),'Fees (')]    10
    Click Element    xpath=//a[contains(text(),'Fees (')]
    wait until element is visible    xpath=//a[contains(text(),'Add New Fee Schedule')]    5
    Click Element    xpath=//a[contains(text(),'Add New Fee Schedule')]
    wait until element is visible    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]    5
    Click Element    xpath=//*[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']/option[2]
    Click Element    xpath=//*[@class='rightArrow']
    sleep    3
    Click Element    xpath=(//*[@type='checkbox'])[2]
    Input Text    xpath=(//*[@type="text"])[1]    ${RateAmount}
    Click Element    xpath=//span[text()='Refund Sale Value Less']/../preceding-sibling::td/input
    Input Text    xpath=//span[text()='Refund Sale Value Less']/../following-sibling::td/input    ${RefundSchedule}
    Click Element    xpath=//*[@id='CreateButton']
    wait until element is visible    xpath=//*[@id='SaveButton']    5
    Click Element    xpath=//*[@id='SaveButton']

Third Party Content Manager For Merge Records
    [Arguments]    ${Name}
    wait until element is visible    //td[text()='Third Parties (0)']//following-sibling::td[@class='T2GridHeaderBarLinks']/a    10
    Click Element    //td[text()='Third Parties (0)']//following-sibling::td[@class='T2GridHeaderBarLinks']/a
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_WizardStep1_ThirdPartyNameText_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='ctl00_pageContent_WizardStep1_ThirdPartyNameText_T2FormTextBox_TextBox']    ${Name}
    Click Element    xpath=//*[@id='ctl00_pageContent_WizardStep1_SearchButton']
    Sleep    5s
    Click Element    //*[@id='ctl00_pageContent_ThirdPartyInsertWizard_Next']
    wait until element is visible    //*[@id="ctl00_pageContent_SaveButton"]
    Click Element    //*[@id="ctl00_pageContent_SaveButton"]

Merge Customers
    [Arguments]    ${LastName}    ${FirstName}
    wait until element is visible    xpath=//*[@id='PageSideBar']/tbody/tr[10]/td/a    10
    Click Element    xpath=//*[@id='PageSideBar']/tbody/tr[10]/td/a
    Input Text    xpath=.//*[@id='ctl00_pageContent_WizardStep1_S1LastNameText_T2FormTextBox_TextBox']    ${LastName}
    Input Text    xpath=.//*[@id='ctl00_pageContent_WizardStep1_S1FirstNameText_T2FormTextBox_TextBox']    ${FirstName}
    Click Element    xpath=//*[@id='ctl00_pageContent_WizardStep1_SearchButton']
    wait until element is visible    xpath=//td[text()='${FirstName}']    10
    Click Element    xpath=//td[text()='${FirstName}']
    Sleep    3s
    Click Element    xpath=//a[text()='Next']
    Sleep    3s
    Click Element    xpath=//a[contains(.,'[ Check All ]')]
    Sleep    3s
    Click Element    xpath=//a[text()='Next']
    Sleep    3s
    Click Element    xpath=//a[text()='Next']
    Sleep    3s
    Click Element    xpath=//a[text()='Next']
    Sleep    3s
    Click Element    xpath=//a[@title='Finish']

Appeal Content Manager
    [Arguments]    ${AppealNoteCode}    ${FirstName}
    wait until element is visible    xpath=//td[contains(text(), 'Appeals')]/following-sibling::td[1]/a[text()='[ Add ]']    10s
    Click Element    xpath=//td[contains(text(), 'Appeals')]/following-sibling::td[1]/a[text()='[ Add ]']
    wait until element is visible    xpath=//a[text()='Set Customer']
    Click Element    xpath=//a[text()='Set Customer']
    wait until element is visible    xpath=//input[@id='txtEntitySearchFirstName_T2FormTextBox_TextBox']
    Input Text    xpath=//input[@id='txtEntitySearchFirstName_T2FormTextBox_TextBox']    ${FirstName}
    Click Element    xpath=//a[text()='Search']
    wait until element is visible    xpath=//td[text()='${FirstName}']/following-sibling::td/a[text()='Select']
    Click Element    xpath=//td[text()='${FirstName}']/following-sibling::td/a[text()='Select']
    wait until element is visible    xpath=//select[@id='manageAdjudication1_AdjudicationWizard_WizardStep1_ddlAppealNoteCode_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//select[@id='manageAdjudication1_AdjudicationWizard_WizardStep1_ddlAppealNoteCode_T2DropDownList_DropDownList']    ${AppealNoteCode}
    Click Element    xpath=//a[text()='Save']
    wait until element is visible    xpath=//input[@id='tabctrlAppeal_tabctrlAppeal_tabCitations_btn']    10s
    Click Element    xpath=//input[@id='tabctrlAppeal_tabctrlAppeal_tabCitations_btn']
    wait until element is visible    xpath=//a[@id='lnkBreadCrumb']    10s
    Click Element    xpath=//a[@id='lnkBreadCrumb']

Click on the Citation Number in the Grid
    [Arguments]    ${CitationNumber}
    wait until element is visible    xpath=//td[text()='${CitationNumber}']/..    10s
    click Element    xpath=//td[text()='${CitationNumber}']/..

Click on the Appeal in the Grid
    wait until element is visible    xpath=//td[contains(text(), 'Appeals (')]/../../../../../following-sibling::tr[2]    10s
    click Element    xpath=//td[contains(text(), 'Appeals (')]/../../../../../following-sibling::tr[2]

Apply Results
    [Arguments]    ${CitationAppealResult}    ${JudgmentDecisionDescription}
    wait until element is visible    xpath=//a[contains(text(), 'Apply Results')]    10s
    click Element    xpath=//a[contains(text(), 'Apply Results')]
    wait until element is visible    xpath=//*[@id='ApplyResultsWizard_WizardStep1_S1CitationAppealResult_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ApplyResultsWizard_WizardStep1_S1CitationAppealResult_T2DropDownList_DropDownList']    ${CitationAppealResult}
    Sleep    2s
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//textarea[@id='ApplyResultsWizard_WizardStep2_S2JudgmentDecision_T2FormTextBox_TextBox']    10s
    Input text    xpath=//textarea[@id='ApplyResultsWizard_WizardStep2_S2JudgmentDecision_T2FormTextBox_TextBox']    ${JudgmentDecisionDescription}
    Click Element    xpath=//a[text()='Finish']

Add Misc Item
    [Arguments]    ${MiscDescription}
    wait until element is visible    xpath=//a[text()='[ Add Misc. Item ]']
    Click Element    xpath=//a[text()='[ Add Misc. Item ]']
    wait until element is visible    xpath=//td[text()='${MiscDescription}']/..
    Click Element    xpath=//td[text()='${MiscDescription}']/..

Insert/Edit Permit Control Group
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${EffectiveDate}    ${ExpirationDate}    ${AvailableForSaleDate}
    ...    ${AvailableEndDate}
    wait until element is visible    //span[text()='Name']/../following-sibling::td[1]/input    10s
    Input Text    //span[text()='Name']/../following-sibling::td[1]/input    ${Name}
    Select From List    //span[text()='Def Per GL Account']/../following-sibling::td[1]//select    ${DefPerGLAccount}
    Select From List    //span[text()='Refund GL Account']/../following-sibling::td[1]//select    ${RefundGLAccount}
    wait until element is visible    //span[text()='Default Value']/../following-sibling::td[1]/input    10
    Input Text    //span[text()='Default Value']/../following-sibling::td[1]/input    100
    wait until element is visible    //span[text()='Value Permission Type']/../following-sibling::td[1]//select    10
    Select From List    //span[text()='Value Permission Type']/../following-sibling::td[1]//select    1
    Input Text    //span[text()='Effective Date']/../following-sibling::td//td[3]//input    ${EffectiveDate}
    Input Text    //span[text()='Expiration Date']/../following-sibling::td//td[3]//input    ${ExpirationDate}
    Input Text    //*[contains(text(),'Available for Sale Date')]/../following-sibling::td[1]//input    ${AvailableForSaleDate}
    Input Text    //*[contains(text(),'Available End Date')]/../following-sibling::td[1]//input    ${AvailableEndDate}
    wait until element is visible    //a[@title='Save']    10
    Click Element    //a[@title='Save']

Permit content manager-MC
    [Arguments]    ${PermitNumber}    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']    10
    Click Element    xpath=//a[@id='FinishAndCheckOutButton']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    Click Element    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

Third Party Content Manager2
    [Arguments]    ${Name}    ${ContactName}
    wait until element is visible    xpath=//*[contains(text(),'Third Parties')]//following-sibling::td[1]/a    10s
    Click Element    xpath=//*[contains(text(),'Third Parties')]//following-sibling::td[1]/a
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_WizardStep1_ThirdPartyNameText_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_WizardStep1_ThirdPartyNameText_T2FormTextBox_TextBox']    ${Name}
    Click Element    xpath=//*[@id='ctl00_pageContent_WizardStep1_SearchButton']
    Sleep    5s
    wait until element is visible    //*[@title='Next']    10s
    Click Element    //*[@title='Next']
    wait until element is visible    xpath=//a[text()='Finish']    10s
    Click Element    xpath=//a[text()='Finish']

Third Party Content Manager1
    [Arguments]    ${Name}
    wait until element is visible    xpath=//*[contains(text(),'Third Parties')]//following-sibling::td[1]/a    10s
    Click Element    xpath=//*[contains(text(),'Third Parties')]//following-sibling::td[1]/a
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_WizardStep1_ThirdPartyNameText_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='ctl00_pageContent_WizardStep1_ThirdPartyNameText_T2FormTextBox_TextBox']    ${Name}
    Sleep    2
    wait until element is visible    //*[@title='Search']    10
    Click Element    //*[@title='Search']
    Comment    wait until element is visible    //*[@title='Add']    10
    Comment    Click Element    //*[@title='Add']
    Sleep    5s
    wait until element is visible    //*[@title='Next']    10s
    Click Element    //*[@title='Next']
    Comment    wait until element is visible    //a[@id='SaveButton']    10
    Comment    Click Element    //a[@id='SaveButton']
    wait until element is visible    xpath=//a[text()='Finish']    10s
    Click Element    xpath=//a[text()='Finish']

Insert/Edit Customer Classification
    [Arguments]    ${Code}    ${Description}
    wait until element is visible    xpath=//input[@id='ctl00_pageContent_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Click Element    xpath=//a[text()='Save']

Insert/Edit Customer Subclassification
    [Arguments]    ${Classification}    ${Code}    ${Description}    ${PermitLimit}
    wait until element is visible    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ClassificationEdit_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ClassificationEdit_T2DropDownList_DropDownList']    ${Classification}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PermissionLimitEdit_T2FormTextBox_TextBox']    ${PermitLimit}
    Click Element    xpath=//a[text()='Save']

Insert/Edit Transfer Agency
    [Arguments]    ${Code}    ${Description}    ${TermType}    ${TermLength}
    wait until element is visible    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Click Element    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_IsAgentForPreAuthorizedDeductionEdit_T2CheckBox_CheckBox']
    Sleep    3s
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PreAuthDeductionTermTypeEdit_T2DropDownList_DropDownList']    ${TermType}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PreAuthDeductionTermLengthEdit_T2FormTextBox_TextBox']    ${TermLength}
    Click Element    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ImportResultsfromTransferAgencyEdit_T2CheckBox_CheckBox']
    Click Element    xpath=//a[text()='Save']

Insert/Edit Payment Method
    [Arguments]    ${PaymentType}    ${Code}    ${Description}    ${TransferAgency}
    wait until element is visible    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PaymentTypeEdit_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PaymentTypeEdit_T2DropDownList_DropDownList']    ${PaymentType}
    Sleep    3s
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_TransferAgencyEdit_T2DropDownList_DropDownList']    ${TransferAgency}
    Click Element    xpath=//a[text()='Save']

Click on Configuration Link
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]

Payment Eligibility Management Page Subclassifications Page- ThirdParty
    [Arguments]    ${Filter}    ${PaymentMethod}    ${Classification}    ${SubClassification}
    wait until element is visible    xpath=//a[text()='SubClassifications']    10s
    Click Element    xpath=//a[text()='SubClassifications']
    wait until element is visible    xpath=//select[@id='WizardStep1_PaymentEligibilityGrid_Filter_Columns_DropDownList']
    Select From List    xpath=//select[@id='WizardStep1_PaymentEligibilityGrid_Filter_Columns_DropDownList']    ${Filter}
    Input Text    xpath=//input[@id='WizardStep1_PaymentEligibilityGrid_Filter_Value_TextBox']    ${PaymentMethod}
    Click Element    xpath=//a[text()='Go']
    Sleep    3s
    wait until element is visible    xpath=//td[text()='${Classification}-${SubClassification}']/following-sibling::td/input
    Select Checkbox    xpath=//td[text()='${Classification}-${SubClassification}']/following-sibling::td/input
    Click Element    xpath=//a[text()='Save']

Payment Eligibility Management Page Subclassifications Page
    [Arguments]    ${Filter}    ${PaymentMethod}    ${Classification}    ${SubClassification}
    wait until element is visible    xpath=//a[text()='SubClassifications']    10s
    Click Element    xpath=//a[text()='SubClassifications']
    wait until element is visible    xpath=//select[@id='WizardStep1_PaymentEligibilityGrid_Filter_Columns_DropDownList']
    Select From List    xpath=//select[@id='WizardStep1_PaymentEligibilityGrid_Filter_Columns_DropDownList']    ${Filter}
    Input Text    xpath=//input[@id='WizardStep1_PaymentEligibilityGrid_Filter_Value_TextBox']    ${PaymentMethod}
    Click Element    xpath=//a[text()='Go']
    Sleep    3s
    wait until element is visible    xpath=//a[text()='>>']
    Click Element    xpath=//a[text()='>>']
    Sleep    3s
    wait until element is visible    xpath=//td[text()='${Classification}-${SubClassification}']/following-sibling::td/input
    Click Element    xpath=//td[text()='${Classification}-${SubClassification}']/following-sibling::td/input
    Click Element    xpath=//a[text()='Save']

Payment Eligibility Management Page Subclassifications Page1
    [Arguments]    ${Filter}    ${PaymentMethod}    ${Classification}    ${SubClassification}
    wait until element is visible    xpath=//a[text()='SubClassifications']    10s
    Click Element    xpath=//a[text()='SubClassifications']
    wait until element is visible    xpath=//select[@id='WizardStep1_PaymentEligibilityGrid_Filter_Columns_DropDownList']
    Select From List    xpath=//select[@id='WizardStep1_PaymentEligibilityGrid_Filter_Columns_DropDownList']    ${Filter}
    Input Text    xpath=//input[@id='WizardStep1_PaymentEligibilityGrid_Filter_Value_TextBox']    ${PaymentMethod}
    Click Element    xpath=//a[text()='Go']
    Sleep    3s
    wait until element is visible    xpath=//td[text()='${Classification}-${SubClassification}']/following-sibling::td/input
    Select Checkbox    xpath=//td[text()='${Classification}-${SubClassification}']/following-sibling::td/input
    Click Element    xpath=//a[text()='Save']

Insert/Edit Permit Control Group SP
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${ExpirationDate}    ${AvailableForSaleDate}    ${AvailableEndDate}
    wait until element is visible    xpath=//span[text()='Name']/../following-sibling::td[1]/input    10s
    Input Text    xpath=//span[text()='Name']/../following-sibling::td[1]/input    ${Name}
    Select From List    xpath=//span[text()='Def Per GL Account']/../following-sibling::td[1]/span/select    ${DefPerGLAccount}
    Select From List    xpath=//span[text()='Refund GL Account']/../following-sibling::td[1]/span/select    ${RefundGLAccount}
    Click Element    xpath=//span[text()='Current Date']/../preceding-sibling::td/input
    Click Element    xpath=//span[text()='Days past effective date']/../preceding-sibling::td/input[@type='radio']
    Input Text    xpath=//span[text()='Days past effective date']/../preceding-sibling::td/input[@type='text']    ${ExpirationDate}
    Input Text    xpath=//span[text()='Available for Sale Date']/../following-sibling::td[1]//td[1]/input    ${AvailableForSaleDate}
    Input Text    xpath=//span[text()='Available End Date']/../following-sibling::td[1]//td[1]/input    ${AvailableEndDate}
    Click Element    xpath=//span[text()='Is Renewable']/../following-sibling::td/span/input
    Click Element    xpath=//a[text()='Save']

Edit Permit Information
    [Arguments]    ${EffectiveDate }    ${ExpirationDate}    ${StallType}    ${StallId }    ${MailTrackingNumber}
    wait until element is visible    xpath=//*[contains(text(), 'Delete Permit')]/../preceding-sibling::tr[1]/td/a[contains(text(), 'Edit Permit')]    10s
    click Element    xpath=//*[contains(text(), 'Delete Permit')]/../preceding-sibling::tr[1]/td/a[contains(text(), 'Edit Permit')]
    wait until element is visible    xpath=//*[@id='PermissionEditWizard_WizardStep1_S1ExpirationDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']
    Input text    xpath=//*[@id='PermissionEditWizard_WizardStep1_S1EffectiveDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${EffectiveDate }
    Input text    xpath=//*[@id='PermissionEditWizard_WizardStep1_S1ExpirationDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${ExpirationDate }
    Select From List    xpath=//*[@id='PermissionEditWizard_WizardStep1_S1SpaceType_T2DropDownList_DropDownList']    ${StallType}
    Input text    xpath=//*[@id='PermissionEditWizard_WizardStep1_S1StallNumber_T2FormTextBox_TextBox']    ${StallId }
    Click Element    xpath=//span[text()='Is Poss Conf Req']/../following-sibling::td//input
    Input text    xpath=//input[@id='PermissionEditWizard_WizardStep1_S1TrackingNumber_T2FormTextBox_TextBox']    ${MailTrackingNumber}
    Click Element    xpath=//span[text()='Is Neutral']/../following-sibling::td//input
    Click Element    xpath=//a[text()='Save']

Renewals Schedule SP
    [Arguments]    ${RenewalDescription}    ${ExpirationDateUpon}    ${RenewalType}    ${TermType}    ${TermLength}    ${TotalFeeAmount}
    ...    ${RenewalPeriodStarts}    ${GracePeriod}    ${PaymentMethod}
    wait until element is visible    xpath=//a[contains(text(), 'Renewals ')]    10
    Click Element    xpath=//a[contains(text(), 'Renewals ')]
    wait until element is visible    xpath=//a[contains(text(), 'Add New Renewal Schedule')]
    Click Element    xpath=//a[contains(text(), 'Add New Renewal Schedule')]
    wait until element is visible    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']    ${RenewalDescription}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalCondition_T2DropDownList_DropDownList']    ${ExpirationDateUpon}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalSchedType_T2DropDownList_DropDownList']    ${RenewalType}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermType_T2DropDownList_DropDownList']    ${TermType}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermLength_T2FormTextBox_TextBox']    ${TermLength}
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']
    Sleep    3s
    Input Text    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']    ${TotalFeeAmount}
    Click Element    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1AutoRenewInBatch_T2CheckBox_CheckBox']
    Sleep    3s
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalPeriodStarts']    ${RenewalPeriodStarts}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1GracePeriod']    ${GracePeriod}
    Click Element    xpath=//label[text()='${PaymentMethod}']/preceding-sibling::input
    Click Element    xpath=//*[@id='SaveButton']

Back to NumberRange from Renewals
    wait until element is visible    xpath=//*[@id='BackToListLink']    5
    Click Element    xpath=//*[@id='BackToListLink']
    wait until element is visible    xpath=//*[@id='BackToListLink']    5
    Click Element    xpath=//*[@id='BackToListLink']
    wait until element is visible    xpath=//*[@id='BackToListLink']    5
    Click Element    xpath=//*[@id='BackToListLink']
    wait until element is visible    xpath=//*[@id='Form1']/table/tbody/tr[3]/td[2]/div[1]/span    5

Click on the Pre-Authorized Deductions in the Grid
    [Arguments]    ${CitationNumber}
    wait until element is visible    xpath=//td[text()='${CitationNumber}']/..    10s
    click Element    xpath=//td[text()='${CitationNumber}']/..

Define Task Parameters PAD
    [Arguments]    ${TransferAgency}    ${CashDrawer}    ${ExportFilePath}    ${ExportFileName}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC995_TransferAgency_T2DropDownList_DropDownList']
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC995_TransferAgency_T2DropDownList_DropDownList']    ${TransferAgency}
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC995_CashDrawer_T2DropDownList_DropDownList']    ${CashDrawer}
    Click Element    xpath=//a[text()='Next']
    Input Text    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step4CustomConfig_CC995_S3ExportFilePath_T2FormTextBox_TextBox']    ${ExportFilePath}
    Input Text    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step4CustomConfig_CC995_S3ExportFile_T2FormTextBox_TextBox']    ${ExportFileName}
    Define_Task_Parameter_SaOField
    Comment    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step4CustomConfig_CC995_S3FieldSelectAndOrder_LeftBox']    ${SelectAndOrderFields}
    Click Element    xpath=//*[@id="ctl00_pageContent_ScheduledTaskWizard_Step4CustomConfig_CC995_S3FieldSelectAndOrder_ctl01"]/span
    Click Element    xpath=//a[text()='Save']

Query manager
    wait until element is visible    xpath=//td[contains(text(),'Processing')]    10s
    click Element    xpath=//td[contains(text(),'Processing')]
    wait until element is visible    //a[contains(text(),'Query Manager')]    10s
    Click Element    //a[contains(text(),'Query Manager')]
    wait until element is visible    xpath=.//a[contains(text(),'Add New Query')]    10s
    Click Element    xpath=.//a[contains(text(),'Add New Query')]

Query Setup
    [Arguments]    ${QueryName}    ${QueryDescription}
    wait until element is visible    //*[@id='WizardSetup_S1QueryName_T2FormTextBox_TextBox']    10s
    Input Text    //*[@id='WizardSetup_S1QueryName_T2FormTextBox_TextBox']    ${QueryName}
    Input Text    //*[@id='WizardSetup_S1QueryDescription_T2FormTextBox_TextBox']    ${QueryDescription}
    Click Element    //*[@id='WizardSetup_S1UseInTasks_T2CheckBox_CheckBox']
    Click Element    //*[@id='QueryBuilderWizard_Next']

Click Citation In Choose Starting Table
    wait until element is visible    //a[contains(text(),'CONTRAVENTION_VIEW)')]    10s
    Click Element    //a[contains(text(),'CONTRAVENTION_VIEW)')]
    Click Element    //*[@id='QueryBuilderWizard_Next']

Join Additional Tables
    Sleep    10
    wait until element is visible    //*[@id='CON_13_AVAIL']/ins    10s
    Click Element    //*[@id='CON_13_AVAIL']/ins
    Sleep    10
    wait until element is visible    //*[text()='Customer (ENTITY_VIEW)']    10
    Drag And Drop    xpath=//*[text()='Customer (ENTITY_VIEW)']    xpath=(//a[text()='Citation (CONTRAVENTION_VIEW)'])[2]/ins
    wait until element is visible    //*[@id='QueryBuilderWizard_Next']    10s
    Click Element    //*[@id='QueryBuilderWizard_Next']
    wait until element is visible    //a[text()='Citation Number ("CON".CON_TICKET_ID)']    10
    Drag And Drop    xpath=//a[text()='Citation Number ("CON".CON_TICKET_ID)']    xpath=//a[text()='Selected Fields']
    wait until element is visible    xpath=//*[@id='QueryBuilderWizard_Next']    10
    Click Element    xpath=//*[@id='QueryBuilderWizard_Next']
    Comment    wait until element is visible    xpath=//*[@id='QueryBuilderWizard_Next']    10
    Comment    Click Element    xpath=//*[@id='QueryBuilderWizard_Next']

Select Filters
    [Arguments]    ${Value}
    Sleep    6
    wait until element is visible    xpath=//*[@id='Field_0_0_dropdown']    10
    Click Element    xpath=//*[@id='Field_0_0_dropdown']
    wait until element is visible    xpath=//a[text()='Citation UID ("CON".CON_UID)']    10
    Click Element    xpath=//a[text()='Citation UID ("CON".CON_UID)']
    Sleep    5
    wait until element is visible    //*[@id='FilterStep_QMFilterBaseTable_Value_0_0_TextBox']    10s
    Input Text    //*[@id='FilterStep_QMFilterBaseTable_Value_0_0_TextBox']    ${Value}
    Sleep    10
    wait until element is visible    xpath=//*[@id='FilterStep_QMFilterBaseTable_Add']    10
    Click Element    xpath=//*[@id='FilterStep_QMFilterBaseTable_Add']
    Sleep    10
    wait until element is visible    xpath=//*[@id='QueryBuilderWizard_Next']    10
    Click Element    xpath=//*[@id='QueryBuilderWizard_Next']
    Sleep    10
    Drag And Drop    //*[text()='Citation Number ("CON".CON_TICKET_ID)']    xpath=//*[@id='selected']/a
    wait until element is visible    xpath=//*[@id='QueryBuilderWizard_Next']    10
    Click Element    xpath=//*[@id='QueryBuilderWizard_Next']

Select Options for Totals and Counts
    wait until element is visible    xpath=//*[@id='AdvancedStep_IncludeTotals_T2CheckBox_CheckBox']    10
    Click Element    xpath=//*[@id='AdvancedStep_IncludeTotals_T2CheckBox_CheckBox']
    wait until element is visible    xpath= //*[@id='QueryBuilderWizard_Next']    10
    Click Element    xpath=//*[@id='QueryBuilderWizard_Next']
    wait until element is visible    xpath= //*[@id='SaveAndRunButton']    10
    Click Element    xpath=//*[@id='SaveAndRunButton']

Lookup Table Management2
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    Click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'Task Scheduler')]

Add New Item2
    wait until element is visible    xpath=//a[contains(text(),'Add New Task')]    10s
    Click Element    xpath=//a[contains(text(),'Add New Task')]

Define Scheduled Task
    [Arguments]    ${TaskName}    ${Description}    ${TaskType}
    wait until element is visible    //*[@id='ctl00_pageContent_ScheduledTaskWizard_Step1DefineScheduledTask_S1TaskName_T2FormTextBox_TextBox']    10s
    Input Text    //*[@id='ctl00_pageContent_ScheduledTaskWizard_Step1DefineScheduledTask_S1TaskName_T2FormTextBox_TextBox']    ${TaskName}
    Input Text    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step1DefineScheduledTask_S1TaskDescription_T2FormTextBox_TextBox']    ${Description}
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step1DefineScheduledTask_S1TaskType_T2DropDownList_DropDownList']    ${TaskType}
    Click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_ScheduledTaskWizard_Next']

Define Schedule Task Step2
    [Arguments]    ${TimePeriod}
    wait until element is visible    //*[@id='ctl00_pageContent_ScheduledTaskWizard_Step2DefineSchedule_S2TimePeriod_T2DropDownList_DropDownList']    10s
    Select From List    //*[@id='ctl00_pageContent_ScheduledTaskWizard_Step2DefineSchedule_S2TimePeriod_T2DropDownList_DropDownList']    ${TimePeriod}
    Click Element    //*[@id='ctl00_pageContent_ScheduledTaskWizard_ScheduledTaskWizard_Next']

Define Task Parameters1
    [Arguments]    ${SelectBatchQuery}    ${Selectfieldupdate}    ${CommentPrivate}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC380_S3Query_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC380_S3Query_T2DropDownList_DropDownList']    ${SelectBatchQuery}
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC380_tablefields_13__T2DropDownList_DropDownList']    ${Selectfieldupdate}
    Sleep    10
    wait until element is visible    //*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC380_field_1316_T2FormTextBox_TextBox']
    Input Text    //*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC380_field_1316_T2FormTextBox_TextBox']    ${CommentPrivate}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC380_btnAdd']    10
    Click Element    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC380_btnAdd']
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_SaveButton']    10
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Define Task Parameters CLFP
    [Arguments]    ${StartDate}    ${CitationFee}    ${NumberofdaysbetweenFees}    ${MaximumFeeCount}
    wait until element is visible    xpath=//input[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC130_StartDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']
    Input Text    xpath=//input[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC130_StartDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${StartDate}
    Select From List    xpath=//select[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC130_ContraventionFeeDropdown_T2DropDownList_DropDownList']    ${CitationFee}
    Input Text    xpath=//input[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC130_DaysSinceIssueText_T2FormTextBox_TextBox']    ${NumberofdaysbetweenFees}
    Input Text    xpath=//input[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC130_MaxFeeText_T2FormTextBox_TextBox']    ${MaximumFeeCount}
    Click Element    xpath=//a[text()='Save']

Define Task Parameters-CSL
    [Arguments]    ${StatementType}    ${CustomerBalanceStatus}    ${StatementIntervalDays}    ${MaxLetterCount}    ${DaysBeforeCitation}    ${CustomerSubclassification}
    ...    ${AddressType}    ${LetterTemplate}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_StatementType_T2DropDownList_DropDownList']
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_StatementType_T2DropDownList_DropDownList']    ${StatementType}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_BalanceCriteria_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_BalanceCriteria_T2DropDownList_DropDownList']    ${CustomerBalanceStatus}
    Input Text    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_StatementInterval_T2FormTextBox_TextBox']    ${StatementIntervalDays}
    Input Text    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_MaxLetterCount_T2FormTextBox_TextBox']    ${MaxLetterCount}
    Input Text    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_DaysBeforeContraventionsIncluded_T2FormTextBox_TextBox']    ${DaysBeforeCitation}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_Classification_LeftBox']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_Classification_LeftBox']    ${CustomerSubclassification}
    click Element    xpath=//td[text()='Customer Subclassification']/following-sibling::td//a/span[@class='rightArrow']
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_Addresses_LeftBox']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_Addresses_LeftBox']    ${AddressType}
    click Element    xpath=//td[text()='Address Types']/following-sibling::td//a/span[@class='rightArrow']
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_LetterTemplate_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step3CustomConfig_CC150_LetterTemplate_T2DropDownList_DropDownList']    ${LetterTemplate}
    wait until element is visible    xpath=//a[text()='Save']    10s
    Click Element    xpath=//a[text()='Save']

Payment Eligibility Management FinancialType Page
    [Arguments]    ${Filter}    ${PaymentMethod}    ${FinancialType}
    wait until element is visible    xpath=//a[text()='Financial Types']    10s
    Click Element    xpath=//a[text()='Financial Types']
    wait until element is visible    xpath=//select[@id='WizardStep1_PaymentEligibilityGrid_Filter_Columns_DropDownList']    10
    Select From List    xpath=//select[@id='WizardStep1_PaymentEligibilityGrid_Filter_Columns_DropDownList']    ${Filter}
    Input Text    xpath=//input[@id='WizardStep1_PaymentEligibilityGrid_Filter_Value_TextBox']    ${PaymentMethod}
    Click Element    xpath=//a[text()='Go']
    Sleep    3s
    Click Element    xpath=//a[text()='>>']
    Sleep    3s
    Comment    Click Element    xpath=//a[text()='>']
    Comment    Sleep    3s
    wait until element is visible    xpath=//td[text()='${FinancialType}']/following-sibling::td/input    10
    Click Element    xpath=//td[text()='${FinancialType}']/following-sibling::td/input
    Click Element    xpath=//a[text()='Save']

Permit content manager-Link Flow
    [Arguments]    ${PermitNumber}
    wait until element is visible    xpath=//td[contains(text(), 'Permits (')]/following-sibling::td/a[text()='[ Link ]']    10
    click Element    xpath=//td[contains(text(), 'Permits (')]/following-sibling::td/a[text()='[ Link ]']
    wait until element is visible    xpath=//*[@id='WizardStep1_S1PermissionNumberText_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='WizardStep1_S1PermissionNumberText_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//a[text()='Search']
    wait until element is visible    xpath=//td[text()='${PermitNumber}']/..    10
    Click Element    xpath=//td[text()='${PermitNumber}']/..
    wait until element is visible    xpath=//a[text()='Next']    10
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//a[text()='Finish']    10
    Click Element    xpath=//a[text()='Finish']

Permit content manager-Sell Flow POS
    [Arguments]    ${PermitNumber}    ${EffectiveDate}    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//input[@id='PermissionSellWizard_WizardStep2_S2EffectiveDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    10
    Input Text    xpath=//input[@id='PermissionSellWizard_WizardStep2_S2EffectiveDate_T2FormDatePicker_T2DatePickerTextBox_TextBox']    ${EffectiveDate}
    Click Element    xpath=(//td[@class='T2FormLabelNotRequired'])[2]
    Sleep    3s
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']
    Click Element    xpath=//*[@id='FinishAndCheckOutButton']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    Click Element    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

Insert/Edit Address Type
    [Arguments]    ${Code}    ${Description}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_SaveButton']    10
    Click Element    xpath=//*[@id='ctl00_pageContent_SaveButton']

Refresh Browser
    Click Element    xpath=//img[@title='Home']
    sleep    5

Cash Drawer Section
    [Arguments]    ${Dollars}    ${Percentage}    ${WaiveAmount}    ${PermitAmount}
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_308_T2CheckBox_CheckBox']    10s
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_308_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_15_T2CheckBox_CheckBox']
    Input Text    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_245_T2FormTextBox_TextBox']    ${Dollars}
    Sleep    2
    Input Text    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_244_T2FormTextBox_TextBox']    ${Percentage}
    Sleep    2
    Input Text    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_13_T2FormTextBox_TextBox']    ${WaiveAmount}
    Sleep    5
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_12_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_12_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_14_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_16_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_17_T2CheckBox_CheckBox']
    Input Text    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_18_T2FormTextBox_TextBox']    ${PermitAmount}
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_19_T2CheckBox_CheckBox']
    Sleep    5
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_19_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_19_T2CheckBox_CheckBox']

Configuration Section
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_164_T2CheckBox_CheckBox']    10s
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_164_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_20_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_306_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_283_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_21_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_23_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_179_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_24_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_22_T2CheckBox_CheckBox']

Customer Section
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_12_T2CheckBox_CheckBox']    10s
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_34_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_35_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_97_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_36_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_95_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_37_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_38_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_39_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_40_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_41_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_42_T2CheckBox_CheckBox']

Permit Section
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_57_T2CheckBox_CheckBox']    10s
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_57_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_227_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_312_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_61_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_58_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_314_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_59_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_60_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_62_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_321_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_316_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_226_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_63_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_64_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_215_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_315_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_65_T2CheckBox_CheckBox']

Receipt Section
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_372_T2CheckBox_CheckBox']    10s
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_372_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_73_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_74_T2CheckBox_CheckBox']

Relationship Section
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_75_T2CheckBox_CheckBox']    10s
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_75_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_252_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_76_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_77_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_78_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_79_T2CheckBox_CheckBox']

Vehicle Section
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_89_T2CheckBox_CheckBox']    10s
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_89_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_90_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_98_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_91_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_92_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_99_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_93_T2CheckBox_CheckBox']
    Click Element    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Privilege_94_T2CheckBox_CheckBox']
    Click Element    xpath=(//a[text()='Save'])[2]

User Logout
    wait until element is visible    xpath=//img[@title='Logout']    10s
    Click Element    xpath=//img[@title='Logout']

Permit content manager-Sell Flow CPP
    [Arguments]    ${PermitNumber}    ${QuantityPaymentAmount}    ${PaymentMethod}    ${Reference}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']    10
    Click Element    xpath=//*[@id='FinishAndCheckOutButton']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep1_S1BasketGrid_ctl02_S1PaymentText_TextBox']    10s
    Input Text    xpath=//*[@id='CheckOutWizard_WizardStep1_S1BasketGrid_ctl02_S1PaymentText_TextBox']    ${QuantityPaymentAmount}
    wait until element is visible    xpath=//a[text()='Update']    10
    Click Element    xpath=//a[text()='Update']
    wait until element is visible    xpath=//a[text()='Next']    10
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentReferenceText_TextBox']    10s
    Input Text    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentReferenceText_TextBox']    ${Reference}
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

Logout
    wait until element is visible    xpath=//a[@title='Logout']    10s
    Click Element    xpath=//a[@title='Logout']

Continue
    wait until element is visible    xpath=//a[@id='ContinueButton']    10s
    Click Element    xpath=//a[@id='ContinueButton']

PaymentMethod
    [Arguments]    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    Click Element    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

Override Authentication
    [Arguments]    ${OverrideID}    ${Password}    ${OverrideReason}    ${OverrideComments}
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStepOverride_SOUserID_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='CheckOutWizard_WizardStepOverride_SOUserID_T2FormTextBox_TextBox']    ${OverrideID}
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStepOverride_SOPassword_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='CheckOutWizard_WizardStepOverride_SOPassword_T2FormTextBox_TextBox']    ${Password}
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStepOverride_SOOverrideReason_T2DropDownList_DropDownList']    10
    Select From List    xpath=//*[@id='CheckOutWizard_WizardStepOverride_SOOverrideReason_T2DropDownList_DropDownList']    ${OverrideReason}
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStepOverride_SOOverrideComments_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='CheckOutWizard_WizardStepOverride_SOOverrideComments_T2FormTextBox_TextBox']    ${OverrideComments}
    wait until element is visible    xpath=//a[@id='ContinueButton']    10s
    Click Element    xpath=//a[@id='ContinueButton']

Permit content manager-PCG
    [Arguments]    ${PermitNumber}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']    10
    Click Element    xpath=//a[@id='FinishAndCheckOutButton']

Insert/Edit User
    [Arguments]    ${User}    ${Type}    ${UseraUth}    ${Password}    ${NickName}    ${Desc}
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_UserIDEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_UserIDEdit_T2FormTextBox_TextBox']    ${User}
    Select From List    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_UserType_T2DropDownList_DropDownList']    ${Type}
    Select From List    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_AuthMethod_T2DropDownList_DropDownList']    ${UseraUth}
    Sleep    15
    wait until element is visible    xpath=//input[@id='UserAccountInsertWizard_PanelInsertUserAccount_SecurityRoles_T2CheckBoxList_CheckBoxList_2']    10s
    Click Element    xpath=//input[@id='UserAccountInsertWizard_PanelInsertUserAccount_SecurityRoles_T2CheckBoxList_CheckBoxList_2']
    Sleep    10
    wait until element is visible    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Password_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Password_T2FormTextBox_TextBox']    ${Password}
    Input Text    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_ConfirmPassword_T2FormTextBox_TextBox']    ${Password}
    Click Element    xpath=//input[@id='UserAccountInsertWizard_PanelInsertUserAccount_PswdNeverExpires_T2CheckBox_CheckBox']
    Sleep    5
    Input Text    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_Nickname_T2FormTextBox_TextBox']    ${NickName}
    Input Text    xpath=//*[@id='UserAccountInsertWizard_PanelInsertUserAccount_UserDescription_T2FormTextBox_TextBox']    ${Desc}

User Management
    wait until element is visible    xpath=//td[contains(text(),'Configuration')]    10s
    click Element    xpath=//td[contains(text(),'Configuration')]
    Click Element    xpath=//a[contains(text(),'User Management')]

Add New User
    wait until element is visible    //tr[@class='PageSideBarItemEnabled']//a[contains(text(),'Add New User')]    10
    click Element    //tr[@class='PageSideBarItemEnabled']//a[contains(text(),'Add New User')]

Insert/Edit Permit Control Group PCG
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${ExpirationDate}    ${AvailableForSaleDate}    ${AvailableEndDate}
    wait until element is visible    xpath=//span[text()='Name']/../following-sibling::td[1]/input    10s
    Input Text    xpath=//span[text()='Name']/../following-sibling::td[1]/input    ${Name}
    Select From List    xpath=//span[text()='Def Per GL Account']/../following-sibling::td[1]/span/select    ${DefPerGLAccount}
    Select From List    xpath=//span[text()='Refund GL Account']/../following-sibling::td[1]/span/select    ${RefundGLAccount}
    Click Element    xpath=//span[text()='Current Date']/../preceding-sibling::td/input
    Click Element    xpath=//span[text()='Days past effective date']/../preceding-sibling::td/input[@type='radio']
    Input Text    xpath=//span[text()='Days past effective date']/../preceding-sibling::td/input[@type='text']    ${ExpirationDate}
    Input Text    xpath=//span[text()='Available for Sale Date']/../following-sibling::td[1]//td[1]/input    ${AvailableForSaleDate}
    Input Text    xpath=//span[text()='Available End Date']/../following-sibling::td[1]//td[1]/input    ${AvailableEndDate}
    Click Element    xpath=//span[text()='Sales Restricted to Waiting List']/../following-sibling::td/span/input
    Click Element    xpath=//a[text()='Save']

Insert/Edit Permit Control Group RERP
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${ExpirationDate}    ${AvailableForSaleDate}    ${AvailableEndDate}
    wait until element is visible    xpath=//span[text()='Name']/../following-sibling::td[1]/input    10s
    Input Text    xpath=//span[text()='Name']/../following-sibling::td[1]/input    ${Name}
    Select From List    xpath=//span[text()='Def Per GL Account']/../following-sibling::td[1]/span/select    ${DefPerGLAccount}
    Select From List    xpath=//span[text()='Refund GL Account']/../following-sibling::td[1]/span/select    ${RefundGLAccount}
    Click Element    xpath=//span[text()='Current Date']/../preceding-sibling::td/input
    Click Element    xpath=//span[text()='Days past effective date']/../preceding-sibling::td/input[@type='radio']
    Input Text    xpath=//span[text()='Days past effective date']/../preceding-sibling::td/input[@type='text']    ${ExpirationDate}
    Input Text    xpath=//span[text()='Available for Sale Date']/../following-sibling::td[1]//td[1]/input    ${AvailableForSaleDate}
    Input Text    xpath=//span[text()='Available End Date']/../following-sibling::td[1]//td[1]/input    ${AvailableEndDate}
    Click Element    xpath=//input[@id='TrackedControlGroupInsertEditWizard_WizardStep1_S1IsRenewable_T2CheckBox_CheckBox']
    Sleep    3
    wait until element is visible    xpath=//a[text()='Save']    10s
    Click Element    xpath=//a[text()='Save']

Renewals Schedule RERP
    [Arguments]    ${RenewalDescription}    ${ExpirationDateUpon}    ${RenewalType}    ${TermType}    ${TermLength}    ${TotalFeeAmount}
    ...    ${RenewalPeriodStarts}    ${GracePeriod}    ${PaymentMethod}
    wait until element is visible    xpath=//a[contains(text(), 'Renewals ')]    10
    Click Element    xpath=//a[contains(text(), 'Renewals ')]
    wait until element is visible    xpath=//a[contains(text(), 'Add New Renewal Schedule')]
    Click Element    xpath=//a[contains(text(), 'Add New Renewal Schedule')]
    wait until element is visible    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1Description_T2FormTextBox_TextBox']    ${RenewalDescription}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalCondition_T2DropDownList_DropDownList']    ${ExpirationDateUpon}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalSchedType_T2DropDownList_DropDownList']    ${RenewalType}
    Select From List    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermType_T2DropDownList_DropDownList']    ${TermType}
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1TermLength_T2FormTextBox_TextBox']    ${TermLength}
    Click Element    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']
    Sleep    5
    Input Text    xpath=//input[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1SaleFee_T2FormTextBox_TextBox']    ${TotalFeeAmount}
    Click Element    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1AutoRenewInBatch_T2CheckBox_CheckBox']
    Sleep    5
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1RenewalPeriodStarts']    ${RenewalPeriodStarts}
    Sleep    5
    Input Text    xpath=//*[@id='RenewalScheduleInsertEditWizard_WizardStep1_S1GracePeriod']    ${GracePeriod}
    wait until element is visible    xpath=//*[@id='SaveButton']    10
    Click Element    xpath=//*[@id='SaveButton']

Permit content manager-CreditCard
    [Arguments]    ${PermitNumber}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']    10
    Click Element    xpath=//a[@id='FinishAndCheckOutButton']

FeeSchedule Select PEM
    [Arguments]    ${Classification}    ${RateAmount}
    wait until element is visible    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a    10
    Click Element    xpath=//*[@id='ControlGroupListForFacilities_UpdatePanel']/table/tbody/tr[4]/td[5]/a
    wait until element is visible    xpath=//a[contains(text(),'Add New Fee Schedule')]    5
    Click Element    xpath=//a[contains(text(),'Add New Fee Schedule')]
    wait until element is visible    xpath=//select[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']    5
    Select From List    xpath=//select[@id='FeeScheduleEditWizard_WizardStep1_S1Subclassifications_LeftBox']    ${Classification}
    sleep    2
    Click Element    //*[@class='rightArrow']
    sleep    3
    Input Text    xpath=(//*[@type="text"])[1]    ${RateAmount}
    wait until element is visible    xpath=//*[@id='SaveButton']    5
    Click Element    xpath=//*[@id='SaveButton']

Times Schedule
    wait until element is visible    xpath=//a[contains(text(), 'Times (')]    10
    Click Element    xpath=//a[contains(text(), 'Times (')]
    wait until element is visible    xpath=//a[contains(text(),'Add Time Schedule')]    5
    Click Element    xpath=//a[contains(text(),'Add Time Schedule')]
    wait until element is visible    xpath=//select[@id='TimeScheduleEditWizard_WizardStep1_S1Facilities_LeftBox']/option    5
    Click Element    xpath=//select[@id='TimeScheduleEditWizard_WizardStep1_S1Facilities_LeftBox']/option
    sleep    2
    Click Element    xpath=//*[@class='rightArrow']
    sleep    3
    Click Element    xpath=//span[text()='Day of Week/Time']/../preceding-sibling::td//input
    sleep    3
    Click Element    xpath=//div[text()='All']/../preceding-sibling::td//input
    wait until element is visible    xpath=//a[text()='Save']    5
    Click Element    xpath=//a[text()='Save']

Permit content manager-Sell Flow PEM
    [Arguments]    ${PermitNumber}
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//*[@id='FinishAndCheckOutButton']    10
    Click Element    xpath=//*[@id='FinishAndCheckOutButton']

Selection Basket CheckOut PEM1
    [Arguments]    ${MiscDescription1}    ${MiscDescription2}    ${PaymentMethod}
    wait until element is visible    xpath=//a[contains(text(),'Check Out')]    10
    Click Element    Xpath=//a[contains(text(),'Check Out')]
    wait until element is visible    xpath=(//td[contains(text(), '${MiscDescription1}')]/following-sibling::td//input[@type='checkbox'])[2]
    Click Element    xpath=(//td[contains(text(), '${MiscDescription1}')]/following-sibling::td//input[@type='checkbox'])[2]
    Click Element    xpath=(//td[contains(text(), '${MiscDescription2}')]/following-sibling::td//input[@type='checkbox'])[2]
    Click Element    xpath=//a[text()='Update']
    wait until element is visible    xpath=//a[text()='Next']    10
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10s
    select from list    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    Sleep    2s
    Click Element    Xpath=//*[@id='FinishButton']

Selection Basket CheckOut PEM2
    [Arguments]    ${MiscDescription2}    ${PaymentMethod}
    wait until element is visible    xpath=//a[contains(text(),'Check Out')]    10
    Click Element    Xpath=//a[contains(text(),'Check Out')]
    wait until element is visible    xpath=(//td[contains(text(), '${MiscDescription2}')]/following-sibling::td//input[@type='checkbox'])[2]
    Click Element    xpath=(//td[contains(text(), '${MiscDescription2}')]/following-sibling::td//input[@type='checkbox'])[2]
    Click Element    xpath=//a[text()='Update']
    wait until element is visible    xpath=//a[text()='Next']    10
    Click Element    xpath=//a[text()='Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10s
    select from list    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    ${PaymentMethod}
    Sleep    2s
    Click Element    Xpath=//*[@id='FinishButton']

Insert/Edit Permit Control Group PEM
    [Arguments]    ${Name}    ${DefPerGLAccount}    ${RefundGLAccount}    ${ExpirationDate}    ${AvailableForSaleDate}    ${AvailableEndDate}
    wait until element is visible    xpath=//span[text()='Name']/../following-sibling::td[1]/input    10s
    Input Text    xpath=//span[text()='Name']/../following-sibling::td[1]/input    ${Name}
    Select From List    xpath=//span[text()='Def Per GL Account']/../following-sibling::td[1]/span/select    ${DefPerGLAccount}
    Select From List    xpath=//span[text()='Refund GL Account']/../following-sibling::td[1]/span/select    ${RefundGLAccount}
    Click Element    xpath=//span[text()='Current Date']/../preceding-sibling::td/input
    Click Element    xpath=//span[text()='Days past effective date']/../preceding-sibling::td/input[@type='radio']
    Input Text    xpath=//span[text()='Days past effective date']/../preceding-sibling::td/input[@type='text']    ${ExpirationDate}
    Input Text    xpath=//span[text()='Available for Sale Date']/../following-sibling::td[1]//td[1]/input    ${AvailableForSaleDate}
    Input Text    xpath=//span[text()='Available End Date']/../following-sibling::td[1]//td[1]/input    ${AvailableEndDate}
    Comment    Click Element    xpath=//span[text()='Eligible Payment Methods']/../following-sibling::td//td/label[text()='${PaymentMethod}']/preceding-sibling::input
    Click Element    xpath=//a[text()='Save']

Insert/Edit Payment Method PEM
    [Arguments]    ${PaymentType}    ${Code}    ${Description}
    wait until element is visible    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PaymentTypeEdit_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PaymentTypeEdit_T2DropDownList_DropDownList']    ${PaymentType}
    Sleep    3s
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Click Element    xpath=//a[text()='Save']

Selection Basket Page3
    [Arguments]    ${PaymentMethod}
    wait until element is visible    xpath=//a[contains(text(),'Check Out')]    10
    Click Element    Xpath=//a[contains(text(),'Check Out')]
    wait until element is visible    xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']    10
    Click Element    Xpath=//*[@id='CheckOutWizard_CheckOutWizard_Next']
    wait until element is visible    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    10s
    select from list    xpath=//*[@id='CheckOutWizard_WizardStep2_S2PaymentTypeList_DropDownList']    2062
    Sleep    2s
    wait until element is visible    xpath=//*[@id='FinishButton']    10
    Click Element    xpath=//*[@id='FinishButton']

Permit content manager Cancel
    [Arguments]    ${PermitNumber}
    wait until element is visible    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a    10s
    click Element    xpath=//*[@id='ctl00_pageContent_EntityPermissions_UpdatePanel']/table/tbody/tr[1]/td/table/tbody/tr/td[2]/a
    wait until element is visible    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//*[@id='PermissionSellWizard_WizardStep1_S1Number_T2FormTextBox_TextBox']    ${PermitNumber}
    Click Element    xpath=//*[@id='PermissionSellWizard_PermissionSellWizard_Next']
    wait until element is visible    xpath=//a[@title='Cancel']    10s
    Click Element    xpath=//a[@title='Cancel']

Insert/Edit Payment Method2
    [Arguments]    ${PaymentType}    ${Code}    ${Description}
    wait until element is visible    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PaymentTypeEdit_T2DropDownList_DropDownList']    10s
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PaymentTypeEdit_T2DropDownList_DropDownList']    ${PaymentType}
    Sleep    3s
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Click Element    xpath=//a[text()='Save']

Insert/Edit Transfer Agency2
    [Arguments]    ${Code}    ${Description}    ${PMDesc}    ${SubClass}
    wait until element is visible    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Click Element    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_IsForSelectionBasketEdit_T2CheckBox_CheckBox']
    Sleep    6s
    wait until element is visible    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ExportPaymentInfoEdit_T2RadioButtonList_RadioButtonList_0']
    Click Element    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_ExportPaymentInfoEdit_T2RadioButtonList_RadioButtonList_0']
    Sleep    6s
    wait until element is visible    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_AutoSelectTemplateEdit_T2CheckBox_CheckBox']    10s
    Click Element    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_AutoSelectTemplateEdit_T2CheckBox_CheckBox']
    Sleep    3
    wait until element is visible    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_LinkedPaymentScheduleTempEdit_LeftBox']    10
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_AutoSelectProcessDaysEdit_T2FormTextBox_TextBox']    8
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_AutoSelectScheduleDateEdit_T2FormDatePicker_T2DatePickerTextBox_TextBox']    6/21/2017
    wait until element is visible    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_AutoSelectPaymentPlanPeriod_T2DropDownList_DropDownList']    10
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_AutoSelectPaymentPlanPeriod_T2DropDownList_DropDownList']    1
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_LinkedPaymentScheduleTempEdit_LeftBox']    ${PMDesc}
    Click Element    xpath=//*[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_LinkedPaymentScheduleTempEdit_ctl00_pageContent_EditItemWizard_EditItemWizardPanel_right']//span[@class='rightArrow']
    Sleep    6
    wait until element is visible    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_LinkedSubClassEdit_LeftBox']
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_LinkedSubClassEdit_LeftBox']    ${SubClass}
    Click Element    xpath=//a[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_LinkedSubClassEdit_ctl00_pageContent_EditItemWizard_EditItemWizardPanel_right']//span
    Sleep    3
    wait until element is visible    xpath=//a[text()='Save']    10s
    Click Element    xpath=//a[text()='Save']

Insert/Edit PaymentScheduleTemplate
    [Arguments]    ${Code}    ${Description}    ${PaymentType}    ${NOP}
    wait until element is visible    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    10s
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_CodeEdit_T2FormTextBox_TextBox']    ${Code}
    Input Text    xpath=//input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_DescriptionEdit_T2FormTextBox_TextBox']    ${Description}
    Select From List    xpath=//select[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_PaymentPeriodEdit_T2DropDownList_DropDownList']    ${PaymentType}
    Input Text    //input[@id='ctl00_pageContent_EditItemWizard_EditItemWizardPanel_NumberOfPaymentsEdit_T2FormTextBox_TextBox']    ${NOP}
    Click Element    //a[@id='ctl00_pageContent_SaveButton']
