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
Resource          ../../../library/Keywords/Main_Flex_Page/Main_Financial_kw.robot

*** Test Cases ***
InsertCitationTestCase
    [Tags]    P1    TFS49025
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Lookup Table Management
    LTM DropDown    ${DropdownValue}
    Add New Item
    Insert/Edit Citation Violation Code    ${CitationCode}    ${CitationDescription}    ${BaseAmount}    ${GlAccount}    ${LongDescription}
    Lookup Table Management Page
    Select Insert Citation
    Enter Citation Information P1    ${CitationNumber}    ${ViolationCode}    ${Location}    ${State}    ${LicensePlate}    ${PlateType}
    Enter Citation Information P2    ${Make}    ${Model}    ${Style}    ${Color}
    validate_citation_SummaryPage

Pay Citations
    [Tags]    P1    TFS49027
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Lookup Table Management
    LTM DropDown    ${DropdownCVCPC}
    Add New Item
    Insert/Edit Citation Violation Code    ${CVCodePC}    ${CVDescriptionPC }    ${BaseAmountPC}    ${GlAccountPC}    ${LongDescriptionPC}
    LTM DropDown    ${DropdownCLPC}
    Add New Item
    Insert/Edit Citation Location    ${CLCodePC}    ${CLDescriptionPC}    ${ZonePC}
    Select Insert Customer
    Enter Customer Information P1
    Enter Customer Information P2    ${FirstNamePC}    ${LastNamePC}    ${ClassificationPC}    ${SubclassificationPC}
    Lookup Table Management
    LTM DropDown    ${DropdownVRTPC}
    Add New Item
    Insert/Edit Vehicle Relationship Type    ${VRTCodePC}    ${VRTDescriptionPC}
    Select Customer Search
    Search Customers Page    ${LastNamePC}    ${FirstNamePC}
    Vehicle Content Manager    ${StateVehiclePC}    ${LicensePlatePC}    ${PlateTypePC}
    Enter Vehicle Details    ${VehicleMakePC}    ${VehicleModelPC}    ${YearPC}    ${VRTDescriptionPC}
    Addresses Content Manager    ${AddressTypePC}    ${PrimaryStreetPC}    ${CityPC}    ${StatePC}
    Select Insert Citation
    Enter Citation Information P1    ${CitationNumberPC}    ${CVDescriptionPC}    ${CLDescriptionPC}    ${StateVehiclePC}    ${LicensePlatePC}    ${PlateTypePC}
    Enter Citation Information P2 PC    ${StylePC}    ${ColorPC}
    Select Insert Citation
    Enter Citation Information P1    ${CitationNumberPC1}    ${CVDescriptionPC }    ${CLDescriptionPC}    ${StateVehiclePC}    ${LicensePlatePC}    ${PlateTypePC}
    Enter Citation Information P2 PC    ${StylePC}    ${ColorPC}
    Lookup Table Management
    LTM DropDown    ${DropdownCDPC}
    Add New Item
    Insert/Edit Cash Drawer    ${CashDrawerCodePC}    ${CashDrawerDescriptionPC}
    activate_cash_drawer_Loginbutton
    activate_sell_permit_wizard    ${CashDrawerDescriptionPC}
    Refresh Browser
    Select Pay Citation(s)
    Search Customer In Pay Citations    ${LastNamePC}    ${FirstNamePC}    ${CitationNumberPC}    ${CitationNumberPC1}
    Search Citations    ${BaseAmountPC}
    Select Customer Search
    Search Customers Page    ${LastNamePC}    ${FirstNamePC}
    Click on Citation in the Grid    ${CitationNumberPC}
    Click on Customer in the Grid    ${LastNamePC}    ${FirstNamePC}
    Click on Citation in the Grid    ${CitationNumberPC1}

Citation Notice Letters
    [Tags]    P1    TFS49012
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Select Insert Customer
    Enter Customer Information P1
    Enter Customer Information P2    ${FirstNameCNL}    ${LastNameCNL}    ${ClassificationCNL}    ${SubclassificationCNL}
    Lookup Table Management
    LTM DropDown    ${DropdownValueCNL}
    Vehicle Relationship Type    ${CodeCNL}    ${DescriptionCNL}
    Select Customer Search
    Search Customers Page    ${LastNameCNL}    ${FirstNameCNL}
    Vehicle Content Manager    ${StateCNL}    ${LicensePlateCNL}    ${PlateTypeCNL}
    Enter Detailed Vehicle Information    ${VehicleMakeCNL}    ${VehicleModelCNL}    ${VehicleStyleCNL}    ${VehicleColorCNL}    ${DescriptionCNL}
    Addresses Content Manager    ${TypeCNL}    ${PrimaryStreetCNL}    ${CityCNL}    ${StateCNL}
    Select Insert Citation InnerPage
    Enter Citation Information P1-Dropdown by Index    ${CitationNumberCNL}    ${StateCNL}    ${LicensePlateCNL}    ${PlateTypeCNL}
    Enter Citation Information P2-No Entery
    Task Scheduler Inner Page
    Add New Task- Task manager    ${TaskNameCNL}    ${ScheduleDescriptionCNL}    ${TaskTypeCNL}    ${TimePeriodCNL}
    Define Task Parameters    ${SearchTypeCNL}

Pay for Citation Fee Using AP
    [Tags]    P1    TFS49215
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Select Insert Customer
    Enter Customer Information P1
    Enter Customer Information P2    ${FirstNameAPM}    ${LastNameAPM}    ${ClassificationAPM}    ${SubclassificationAPM}
    Lookup Table Management
    LTM DropDown    ${DropdownValueAPM}
    Add New Item
    InsertEdit Address Type    ${CodeAPM2}    ${DescriptionAPM2}
    Select Customer Search
    Search Customers Page    ${LastNameAPM }    ${FirstNameAPM}
    Click VechilesLink- Summary Page
    Select Vehicle    ${StateAPM}    ${LicensePlateAPM}    ${PlateTypeAPM}
    Enter Vehicle Details    ${VehicleMakeAPM}    ${VehicleModelAPM}    ${YearAPM}    ${DescriptionAPM2}
    Addresses Content Manager    ${TypeAPM}    ${PrimaryStreetAPM}    ${CityAPM}    ${StateAPM}
    Refresh Browser
    Select Insert Citation InnerPage
    Enter Citation Information P1-Dropdown by Index    ${CitationNumberAPM}    ${StateAPM}    ${LicensePlateAPM}    ${PlateTypeAPM}
    Enter Citation Information P2    ${VehicleMakeAPM}    ${VehicleModelAPM}    ${StyleAPM}    ${ColorAPM}
    Lookup Table Management
    LTM DropDown    ${DropdownValueAPM2}
    Add New Item
    Insert/Edit Cash Drawer    ${CodeAPM2}    ${DescriptionAPM2}
    activate_cash_drawer_Loginbutton
    activate_sell_permit_wizard    ${DescriptionAPM2}
    Refresh Browser
    Payment Eligibility Management
    Payment Eligibility Management Page Subclassifications Page1    ${FilterST}    ${PaymentMethodST}    ${ClassificationAPM}    ${SubclassificationAPM}
    Refresh Browser
    Select Misc Sale Item
    Link Customer button    ${LastNameAPM}    ${FirstNameAPM}    ${PaymentMethodAPM}
    validate_Selection_Basket
    Close all Browsers

Multi-Citation Notice Letters
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Lookup Table Management
    LTM DropDown    ${DropdownValueMNP}
    Add New Item
    Insert/Edit Customer Classification    ${CodeMNLC}    ${DescriptionMNLC}
    LTM DropDown    ${DropdownValueMNP1}
    Add New Item
    Insert/Edit Customer Subclassification    ${DescriptionMNLC}    ${CodeMNPS}    ${DescriptionMNLS}    ${PermitLimitMNPS}
    Select Insert Customer
    Enter Customer Information P1
    Enter Customer Information P2    ${FirstNameMNP}    ${LastNameMNP}    ${DescriptionMNLC}    ${DescriptionMNLS}
    Lookup Table Management
    LTM DropDown    ${DropdownValueMNP2}
    Add New Item
    Insert/Edit Vehicle Relationship Type    ${CodeMNP1}    ${DescriptionMNP1}
    Select Customer Search
    Search Customers Page    ${LastNameMNP}    ${FirstNameMNP}
    Vehicle Content Manager    ${StateMNP}    ${LicensePlateMNP}    ${PlateTypeMNP}
    Enter Detailed Vehicle Information    ${VehicleMakeMNP}    ${VehicleModelMNP}    ${VehicleStyleMNP}    ${VehicleColorMNP}    ${DescriptionMNP}
    Addresses Content Manager    ${TypeMNP1}    ${PrimaryStreetMNP}    ${CityMNP}    ${StateMNP}
    Select Insert Citation InnerPage
    Enter Citation Information P1-Dropdown by Index    ${CitationNumberMNP1}    ${StateMNP}    ${LicensePlateMNP}    ${PlateTypeMNP}
    Enter Citation Information P2-No Entery
    Select Insert Citation InnerPage
    Enter Citation Information P1-Dropdown by Index    ${CitationNumberMNP2}    ${StateMNP}    ${LicensePlateMNP}    ${PlateTypeMNP}
    Enter Citation Information P2-No Entery
    Select Insert Citation InnerPage
    Enter Citation Information P1-Dropdown by Index    ${CitationNumberMNP3}    ${StateMNP}    ${LicensePlateMNP}    ${PlateTypeMNP}
    Enter Citation Information P2-No Entery
    Task Scheduler
    Add New Task- Task manager    ${TaskNameMNP}    ${ScheduleDescriptionMNP}    ${TaskTypeMNP}    ${TimePeriodMNP}
    Define Task Parameters-Value    ${SearchTypeMNP}    ${DescriptionMNP1}    ${CustomerSubclassificationMNP}    ${CitationStatusMNP}    ${AddressTypeMNP}    ${LetterTemplateMNP}

Citation Late Fee Processing
    Go to homepage
    Login Generic User    ${UserID}    ${password}
    Lookup Table Management
    LTM DropDown    ${DropdownValueCCCLFP}
    Add New Item
    Insert/Edit Customer Classification    ${CodeCCCLFP}    ${DescriptionCCCLFP}
    LTM DropDown    ${DropdownValueCSCLFP}
    Add New Item
    Insert/Edit Customer Subclassification    ${DescriptionCCCLFP}    ${CodeCSCLFP}    ${DescriptionCSCLFP}    ${PermitLimitCLFP}
    Select Insert Customer
    Enter Customer Information P1
    Enter Customer Information P2    ${FirstNameCLFP}    ${LastNameCLFP}    ${DescriptionCCCLFP}    ${DescriptionCSCLFP}
    Lookup Table Management
    LTM DropDown    ${DropdownVRTCLFP}
    Add New Item
    Insert/Edit Vehicle Relationship Type    ${CodeVRTCLFP}    ${DescriptionVRTCLFP}
    Select Customer Search
    Search Customers Page    ${LastNameCLFP}    ${FirstNameCLFP}
    Vehicle Content Manager    ${StateVehicleCLFP}    ${LicensePlateCLFP}    ${PlateTypeCLFP}
    Enter Vehicle Details    ${VehicleMakeCLFP}    ${VehicleModelCLFP}    ${YearCLFP}    ${DescriptionVRTCLFP}
    Addresses Content Manager    ${AddressTypeCLFP}    ${PrimaryStreetCLFP}    ${CityCLFP}    ${StateCLFP}
    Select Insert Citation
    Enter Citation Information P1-Dropdown by Index    ${CitationNumberCLFP1}    ${StateVehicleCLFP}    ${LicensePlateCLFP}    ${PlateTypeCLFP}
    Enter Citation Information P2 PC    ${StyleCLFP}    ${ColorCLFP}
    Select Insert Citation
    Enter Citation Information P1-Dropdown by Index    ${CitationNumberCLFP2}    ${StateVehicleCLFP}    ${LicensePlateCLFP}    ${PlateTypeCLFP}
    Enter Citation Information P2 PC    ${StyleCLFP}    ${ColorCLFP}
    Lookup Table Management
    LTM DropDown    ${DropdownValueGLACLFP}
    Add New Item
    Insert/Edit General Ledger Account    ${CodeGLACLFP}    ${DescriptionGLACLFP}
    Click on Configuration Link
    Misc. Sale Items/Fees
    Add New Misc. Item/Fee
    Insert/Edit Misc. Sale Item/Fee    ${DescriptionMiscCLFP}    ${MiscCategoryCLFP}    ${AmountMiscCLFP}    ${DescriptionGLACLFP}
    Task Scheduler
    Add New Task- Task manager    ${TaskNameCLFP}    ${ScheduleDescriptionCLFP}    ${TaskTypeCLFP}    ${TimePeriodCLFP}
    Define Task Parameters CLFP    ${StartDateCLFP}    ${CitationFeeCLFP}    ${NumberofdaysbetweenFeesCLFP}    ${MaximumFeeCountCLFP}
    Select Citation Search
    Search Citation Page    ${CitationNumberCLFP1}
    Select Citation Search
    Search Citation Page    ${CitationNumberCLFP2}
