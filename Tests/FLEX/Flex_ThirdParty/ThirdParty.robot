*** Settings ***
Resource          ../../../library/Keywords/Assertions/Assertions_kw.robot
Resource          ../../../library/Keywords/Flex_Login/Flex_Login_kw.robot
Resource          ../../../library/Keywords/Main_Flex_Page/Main_Configuration_kw.robot
Resource          ../../../library/Keywords/Main_Flex_Page/Main_Create_kw.robot
Resource          ../../../library/Keywords/General/Store_Results.robot
Library           ../../../Resources/CustomSelenium2Library.py
Resource          ../../../library/Keywords/Main_Flex_Page/Main_Processing_kw.robot
Resource          ../../../library/Keywords/Main_Flex_Page/Main_Search_kw.robot
Resource          ../../../library/Keywords/Main_Flex_Page/Main_Cash_Drawer_kw.robot

*** Test Cases ***
Generate Invoices
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Permit Number Ranges
    Add New Number Range
    Insert/Edit Permit Number Ranges    ${SeriesTypeGI}    ${PermitTypeGI}    ${SeriesPrefixGI}    ${SeriesStartGI}    ${SeriesEndGI}    ${SeriesCharWidthGI}
    ...    ${DescriptionGI}
    Control Group Click    ${SeriesPrefixGI}    ${SeriesStartGI}    ${SeriesEndGI}
    Add New Control Group
    Insert/Edit Permit Control Group    ${NameGI}    ${DefPerGLAccountGI}    ${RefundGLAccountGI}    ${EffectiveDate}    ${ExpirationDate}    ${AvailableForSaleDate}
    ...    ${AvailableEndDate}
    Subclassifications Select
    Facilities Select1
    FeeSchedule Select CSP    ${RateAmountGI}
    Back to the List
    Allocate Permits
    Allocate Permits wizard    ${PermitAllacoationGI}    ${PermitStartGI}    ${PermitEndGI}
    Verify Permits Allocated    ${SeriesStartGI}    ${SeriesEndGI}
    Permits Allocation Page
    Select Insert Customer
    Enter Customer Information P1
    Enter Customer Information P2    ${FirstNameGI}    ${LastNameGI}    ${ClassificationGI}    ${SubclassificationGI}
    Third Party Content Manager1    ${ThirdPartyNameGI}
    Lookup Table Management
    LTM DropDown    ${CashDrawerSelectGI}
    Add New Item
    Insert/Edit Cash Drawer    ${CashDrawerCodeGI}    ${CashDrawerDescriptionGI}
    activate_cash_drawer_Loginbutton
    activate_sell_permit_wizard    ${CashDrawerDescriptionGI}
    Refresh Browser
    Select Customer Search
    Search Customers Page    ${LastNameGI}    ${FirstNameGI}
    Permit content manager-Sell Flow    ${PermitNumberGI}    ${PaymentMethodGI}
    validate_Selection_Basket
    Close all Browsers

Pay Off Invoices
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Permit Number Ranges
    Add New Number Range
    Insert/Edit Permit Number Ranges    ${SeriesTypePOI}    ${PermitTypePOI}    ${SeriesPrefixPOI}    ${SeriesStartPOI}    ${SeriesEndPOI}    ${SeriesCharWidthPOI}
    ...    ${DescriptionPOI}
    control_group_click    ${SeriesPrefixPOI}    ${SeriesStartPOI}    ${SeriesEndPOI}
    Add New Control Group
    Insert/Edit Permit Control Group    ${NamePOI}    ${DefPerGLAccountPOI}    ${RefundGLAccountPOI}    ${EffectiveDate}    ${ExpirationDate}    ${AvailableForSaleDate}
    ...    ${AvailableEndDate}
    Subclassifications Select
    Facilities Select1
    FeeSchedule Select CSP    ${RateAmountPOI}
    Back to the List
    Allocate Permits
    Allocate Permits wizard    ${PermitAllacoationPOI}    ${PermitStartPOI}    ${PermitEndPOI}
    verify_permits_allocated    ${SeriesStartGI}    ${SeriesEndGI}
    Permits Allocation Page
    Select Insert Customer
    Enter Customer Information P1
    Enter Customer Information P2-Third Party    ${FirstNamePOI}    ${LastNamePOI}    ${ClassificationPOI}    ${SubclassificationPOI}
    ThirdParty Details    ${ThirdPartyNamePOI}
    Permit content manager-Sell Flow    ${PermitNumberPOI}    ${PaymentMethodPOI}
    validate_Selection_Basket
    Close all Browsers

Third Party Auto Invoices
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Permit Number Ranges
    Add New Number Range
    Insert/Edit Permit Number Ranges    ${SeriesTypeTPAI}    ${PermitTypeTPAI}    ${SeriesPrefixTPAI}    ${SeriesStartTPAI}    ${SeriesEndTPAI}    ${SeriesCharWidthTPAI}
    ...    ${DescriptionTPAI}
    Control Group Click    ${SeriesPrefixTPAI}    ${SeriesStartTPAI}    ${SeriesEndTPAI}
    Add New Control Group
    Insert/Edit Permit Control Group    ${NameTPAI}    ${ValuePermissionTypeTPAI}    ${DefPerGLAccountTPAI}    ${EffectiveDate}    ${ExpirationDate}    ${AvailableForSaleDate}
    ...    ${AvailableEndDate}
    Subclassifications Select
    Facilities Select    ${Facilities}
    FeeSchedule Select CSP    ${RateAmountTP}
    Back to the List
    Allocate Permits
    Allocate Permits wizard    ${PermitAllacoationTPAI}    ${PermitStartTPAI}    ${PermitEndTPAI}
    verify_permits_allocated    ${SeriesStartTPAI}    ${SeriesEndTPAI}
    Permits Allocation Page
    Select Insert Customer
    Enter Customer Information P1
    Enter Customer Information P2-Third Party    ${FirstNameTPAI}    ${LastNameTPAI}    ${ClassificationTPAI}    ${SubclassificationTPAI}
    ThirdParty Details    ${ThirdPartyNameTPAI}
    Permit content manager-Sell Flow    ${PermitNumberTPAI}    ${PaymentMethodTPAI}
    Close all Browsers

Send on the fly emails
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Lookup Table Management
    LTM DropDown    ${DropdownValueCCSFM}
    Add New Item
    Insert/Edit Customer Classification    ${CodeCCSFM}    ${DescriptionCCSFM}
    LTM DropDown    ${DropdownValueCSSFM}
    Add New Item
    Insert/Edit Customer Subclassification    ${DescriptionCCSFM}    ${CodeCSSFM}    ${DescriptionCSSFM}    ${PermitLimitSFM}
    Select Insert Customer
    Enter Customer Information P1
    Enter Customer Information P2    ${FirstNameSFM}    ${LastNameSFM}    ${DescriptionCCSFM}    ${DescriptionCSSFM}
    System Settings
    Select a Configuration Category_System    ${SMTPServerSFM}    ${SMTPPortSFM}    ${EmailAddressSFM}
    Select Customer Search
    Search Customers Page    ${LastNameSFM}    ${FirstNameSFM}
    Send Email    ${ToSFM}    ${SubjectSFM}    ${BodySFM}
    View Letter History
    validate_email_page    ${UserID}
    Close Browser
