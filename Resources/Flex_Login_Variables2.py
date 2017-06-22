""""   Class to get the Variable & Xpath for the Test cases  """""


class Flex_Login_Variables2():
    "Variables defined for the T2 application"
    HOMEPAGE = "https://automation.t2qa.com/AUTOQA1/PowerPark"

    BROWSER = "Chrome"
    #BROWSER = "Firefox"

    UserID = "AutoUser"
    password = "test"

    # ----------------------------------------Appeals------------------------------------------------------------

    # WI #48868 - Tasks: Create Appeals Directly from CV

    CodeCAD = "CdCAD_P2"
    DescriptionCAD = "DescriptionCAD_P2"
    CodeAwf1CAD = "CdAW1_P2"
    CodeAwf2CAD = "CdAW2_P2"
    CodeAwf3CAD = "CdAW3_P2"
    LongDescriptionCAD = "LongDescriptionCAD_P2"
    DescriptionAppealWorkFlow1CAD = "DescriptionAW1_P2"
    DescriptionAppealWorkFlow2CAD = "DescriptionAW2_P2"
    DescriptionAppealWorkFlow3CAD = "DescriptionAW3_P2"
    LicensePlateCAD2 = "CADV2_P2"
    LicensePlateCAD1 = "CADV1_P2"
    CitationNumberCAD = "CADCN_P2"
    FirstNameCAD = "ABHISHEK_P2"

    DropdownValueCVCCAD = "Citation Violation Code"
    DropdownValueCLCAD = "Citation Location"
    DropdownValueDLCAD = "Docket Location"
    DropdownValueDTCAD = "Docket Type"
    DropdownValueAWFCAD = "Appeal Workflow Step"
    DropdownValueATCAD = "Appeal Type"
    DropdownValueANCCAD = "Appeal Note Code"
    DropdownValueATCCAD = "Appeal Type Configuration"
    DropdownValueVRTCAD = "Vehicle Relationship Type"

    BaseAmountCAD = 100
    GlAccountCAD = "PERMIT"
    ZoneCAD = "Zone 1"
    StartTimeHrCAD = "9:"
    StartTimeMinutesCAD = "00"
    StartTimeSecondsCAD = "AM"
    StopTimeHrCAD = "5:"
    StopTimeMinutesCAD = "00"
    StopTimeSecondsCAD = "PM"
    Duration = "60"
    DocketTypeAppealWorkflow = "DESC QA1hh09"
    AppealType1 = "Committee"
    usefor = "Citation"
    prefix = "INDIA"
    LastNameCAD = "KUMAR"
    ClassificationCAD = "Employee"
    SubclassificationCAD = "Physical Plant"
    StateCAD = "FLORIDA"
    PlateTypeCAD1 = "Motorcycle"
    VehicleMakeCAD = "Acura"
    VehicleModelCAD = "CL"
    VehicleStyleCAD = "Hatchback"
    VehicleColorCAD = "Orange"
    TypeCAD = "Mailing"
    PrimaryStreetCAD = "12345 Blue Street"
    CityCAD = "Indianapolis"
    StateCAD1 = "INDIANA"
    Filter = "Description"

    ViolationCodeCAD = "DESC QA101"
    LocationCAD = "Citation Location 1"
    StateCAD2 = "ALABAMA"
    PlateTypeCAD2 = "NA"
    MakeCAD = "Acura"
    ModelCAD = "CL"
    StyleCAD = "Hatchback"
    ColorCAD = "Beige"

    # WI #48866 - Appeals: Appeals Manager: Use the Appeal Apply Result wizard

    CitationCodeAARCV = "CVCARW_P2"
    CitationDescriptionAARCV = "DescriptionCVAARW_P2"
    CodeAARCL = "CLAAR_P2"
    DescriptionAARCL = "DescriptionCLAARW_P2"
    CodeAARDL = "DLARW_P2"
    DescriptionAARDL = "DescriptionDLAARW_P2"
    CodeAARDT = "DTARW_P2"
    DescriptionAARDT = "DescriptionDTAARW_P2"
    CodeAARAWS1 = "ARSW1_P2"
    DescriptionAARAWS1 = "DescriptionARSW1_P2"
    CodeAARAWS2 = "ARSW2_P2"
    DescriptionAARAWS2 = "DescriptionARSW2_P2"
    CodeAARAWS3 = "ARSW3_P2"
    DescriptionAARAWS3 = "DescriptionARSW3_P2"
    CodeAT = "ATAAR_P2"
    DescriptionAT = "DescriptionATAAR_P2"
    CodeAAANC = "AAANC_P2"
    DescriptionAAANC = "DescriptionAAANC_P2"
    CodeATC = "AARATC_P2"
    DescriptionATC = "DescriptionAARATC_P2"
    CodeVRTAAR = "AARVRT_P2"
    DescriptionVRTAAR = "DescriptionAARVRT_P2"
    FirstNameAAR = "MadhaviAAR_P2"
    LicensePlateAAR = "AARLP_P2"
    CitationNumberAAR = "AARCN_P2"

    BaseAmountAARCV = "100"
    GlAccountAARCV = "MISCELLANEOUS"
    LongDescriptionAARCV = "xaxaadsdsdd"
    DropdownValueAARCV = "Citation Violation Code"
    DropdownValueAARCL = "Citation Location"
    ZoneAARCL = "Zone 1"
    DropdownValueAARDL = "Docket Location"
    DropdownValueAARDT = "Docket Type"
    DropdownValueAARAWS = "Appeal Workflow Step"
    DropdownValueAARAP = "Appeal Type"
    DropdownValueAAANC = "Appeal Note Code"
    DropdownValueAAATC = "Appeal Type Configuration"
    DropdownValueAAVRT = "Vehicle Relationship Type"

    UseforATC = "Citation"
    PrefixATC = "APPEAL_"
    FilterATC = "Description"
    LastNameAAR = "test"
    ClassificationAAR = "Employee"
    SubclassificationAAR = "Physical Plant"
    StateAAR = "COLORADO"
    PlateTypeAAR = "NA"

    VehicleMakeAAR = "Ford"
    VehicleModelAAR = "Bronco"
    YearAAR = "2005"
    VehicleStyleAAR = "Four Door"
    VehicleColorAAR = "Black"
    TypeAAR = "Mailing"
    PrimaryStreetAAR = "12345 Blue Street"
    CityAAR = "Indianapolis"
    StateAARA = "INDIANA"
    CitationAppealResultAAR = "Fine Reduced"
    JudgmentDecisionDescriptionAAR = "Void Ticket"

    # ----------------------------------------Citations-----------------------------------------------------------

    # InsertCitationTestCase

    DropdownValue = "Citation Violation Code"
    CitationCode = "TCI1_P2"
    CitationDescription = "Test Citation forT2Automation_P2"
    BaseAmount = "20"
    GlAccount = "MISCELLANEOUS"
    LongDescription = "Test Citation forT2Automation_P2"
    CitationNumber = "TCI2_P2"
    ViolationCode = "Test Citation forT2Automation_P2"
    Location = "Citation Location 1"
    State = "ARIZONA"
    LicensePlate = "TLP00_P2"
    PlateType = "Passenger"
    Make = "Audi"
    Model = "A8"
    Style = "Hatchback"
    Color = "Burgundy"

    # WI #48868 - Tasks: Pay Citations

    CVCodePC = "CdCV_P2"
    CVDescriptionPC = "DescriptionCVS_P2"
    CLCodePC = "CdCL_P2"
    CLDescriptionPC = "DescriptionCLS_P2"
    FirstNamePC = "MadhaviPC_P2"
    VRTCodePC = "CdVRT_P2"
    VRTDescriptionPC = "DescriptionVRT_P2"
    LicensePlatePC = "23_P2"
    CitationNumberPC = "PC1_P2"
    CitationNumberPC1 = "PC2_P2"
    CashDrawerCodePC = "CdCD_P2"
    CashDrawerDescriptionPC = "DescriptionCD_P2"
    DropdownCVCPC = "Citation Violation Code"
    BaseAmountPC = 100
    GlAccountPC = "MISCELLANEOUS"
    LongDescriptionPC = "Citation Violation Code Description"
    DropdownCLPC = "Citation Location"
    ZonePC = "Zone 2"
    LastNamePC = "testPC"
    ClassificationPC = "Student"
    SubclassificationPC = "On Campus"
    DropdownVRTPC = "Vehicle Relationship Type"
    StateVehiclePC = "COLORADO"
    PlateTypePC = "NA"
    VehicleMakePC = "Ford"
    VehicleModelPC = "Bronco"
    YearPC = "2005"
    AddressTypePC = "Mailing"
    PrimaryStreetPC = "12345 Blue2 Street"
    CityPC = "Indianapolis"
    StatePC = "INDIANA"
    OfficerPC = "TestM (Mobile Device User)"
    StylePC = "Four Door"
    ColorPC = "Black"
    DropdownCDPC = "Cash Drawer"

    # WI #48812 - Task Letter: Citation Notice Letters

    FirstNameCNL = "David_P2"
    LastNameCNL = "Wanner"
    ClassificationCNL = "Student"
    SubclassificationCNL = "On Campus"
    DropdownValueCNL = "Vehicle Relationship Type"
    CodeCNL = "CdNL_P2"
    DescriptionCNL = "Test Desc_P2"
    StateCNL = "COLORADO "
    LicensePlateCNL = "883_P2"
    PlateTypeCNL = "NA"
    VehicleMakeCNL = "Ford"
    VehicleModelCNL = "Bronco"
    VehicleStyleCNL = "Hatchback"
    VehicleColorCNL = "Burgundy"
    Facilities = "Facility A"
    TypeCNL = "Mailing"
    PrimaryStreetCNL = "123West Street"
    CityCNL = "Indianapolis"
    CitationNumberCNL = "CNLCN_P2"
    TaskNameCNL = "Automated Citation Notice_P2"
    ScheduleDescriptionCNL = "Automated Citation Notice_P2"
    TaskTypeCNL = "Citation Notice Letters"
    TimePeriodCNL = "One time"
    SearchTypeCNL = "Whenever Requested"

    CustomerSubclassification = ClassificationCNL + ": " + SubclassificationCNL

    # WI #48815 - Pay for Citation Fee Using Account Payment Method

    FirstNameAPM = "James_B6"
    LastNameAPM = "Watson"
    ClassificationAPM = "Student"
    SubclassificationAPM = "On Campus"
    LookUpTableAPM = "Vehicle Relationship Type"
    CodeAPM = "Sa_B6"
    DescriptionAPM = "APM_B6"
    CodeAPM2 = "Autos_B6"
    DescriptionAPM2 = "Automation Cash DrawerPI_B6"
    LicensePlateAPM = "53_B6"
    DescriptionAPMxpath = "//td[contains(text(),'" + DescriptionAPM + "')]"
    FirstNameAPMxpath = "//td[contains(text(),'" + FirstNameAPM + "')]"
    StateAPM = "Guam"
    PlateTypeAPM = "NA"
    VehicleMakeAPM = "Ford"
    VehicleModelAPM = "Bronco"
    YearAPM = "2005"
    TypeAPM = "Mailing"
    PrimaryStreetAPM = "XXX Street"
    DropdownValueAPM = "Vehicle Relationship Type"
    DropdownValueAPM2 = "Cash Drawer"
    CityAPM = "Indianapolis"
    StateAPM = "INDIANA"
    PostalCodeAPM = "123456"
    CitationNumberAPM = "507_B6"
    ViolationCodeAPM = "ABP"
    LocationAPM = "Citation Location 1"
    StyleAPM = "Four Door"
    ColorAPM = "Black"
    amountAPM = 100
    PaymentMethodAPM = "Cash"

    # WI  # 48827 -  Citation Late Fee Processing

    CodeCCCLFP = "CCLFP_3"
    DescriptionCCCLFP = "DescriptionCCCLFP_3"
    CodeCSCLFP = "CSLFP_3"
    DescriptionCSCLFP = "DescriptionCSCLFP_3"
    CodeVRTCLFP = "VRTLF_3"
    DescriptionVRTCLFP = "DescriptionVRTCLFP_3"
    LicensePlateCLFP = "CLFPLP_3"
    CitationNumberCLFP1 = "CLFP1_3"
    CitationNumberCLFP2 = "CLFP2_3"
    CodeGLACLFP = "GLAFP_3"
    DescriptionGLACLFP = "DescriptionGLAFP_3"
    FirstNameCLFP = "MadhaviCLFP_3"

    DropdownValueCCCLFP = "Customer Classification"
    DropdownValueCSCLFP = "Customer Subclassification"
    DropdownVRTCLFP = "Vehicle Relationship Type"
    DropdownValueGLACLFP = "General Ledger Account"
    PermitLimitCLFP = "1000"
    StateVehicleCLFP = "COLORADO"
    PlateTypeCLFP = "NA"
    VehicleMakeCLFP = "Ford"
    VehicleModelCLFP = "Bronco"
    YearCLFP = "2005"
    AddressTypeCLFP = "Mailing"
    PrimaryStreetCLFP = "12345 Blue2 Street"
    CityCLFP = "Indianapolis"
    StateCLFP = "INDIANA"
    StyleCLFP = "Four Door"
    ColorCLFP = "Black"
    CVDescriptionCLFP = "Description flex1"
    CLDescriptionCLFP = "Citation Location 1"
    DescriptionMiscCLFP = "Citation Late Fee"
    AmountMiscCLFP = "7.25"
    MiscCategoryCLFP = "Fee"
    LastNameCLFP = "test"

    TaskNameCLFP = "Citation Late Fee Processing"
    ScheduleDescriptionCLFP = "Citation Late Fee Processing"
    TaskTypeCLFP = "Citation Late Fee Processing"
    TimePeriodCLFP = "One time"
    StartDateCLFP = "7/1/2017"
    CitationFeeCLFP = "jimfee"
    NumberofdaysbetweenFeesCLFP = "10"
    MaximumFeeCountCLFP = "3"

    # ----------------------------------------Events------------------------------------------------------------

    # WI #48811 - Events: Create an Event Including Contacts and All Resource Types
    FirstNameCEIC = "Harry_Y2"
    LastNameCEIC = "POTTER"
    ClassificationCEIC = "Student"
    SubclassificationCEIC = "Off Campus"
    DropdownSelectCEICGLC = "General Ledger Account"
    codeCEICGLC = "GLS_Y2"
    DescriptionCEICGLC = "GLS DES_Y2"
    DropdownSelectCEICEG = "Event Group"
    codeCEICEG = "EGS_Y2"
    DescriptionCEICEG = "EGS DES_Y2"
    DropdownSelectCEICECT = "Event Contact Type"
    codeCEICECT = "ECT_Y2"
    DescriptionCEICECT = "ECT DES_Y2"
    ContactStyleCEICECT = "Other Contact"
    DropdownSelectCEICECL = "Event Classification"
    codeCEICECL = "ECL_Y2"
    DescriptionCEICECL = "ECL DES_Y2"
    DropdownSelectCEICECR = "Event Resource"
    codeCEICECR = "ACR_Y2"
    DescriptionCEICECR = "ACR DES_Y2"
    QuantityCEICECR = "10"
    CoastCEICECR = "10"
    PriceCEICECR = "20"
    ResourceCategoryCEIC = "Equipment Resource"
    DropdownSelectECRSF = "Event Resource"
    codeCEICECRSF = "AirSF_Y2"
    DescriptionCEICECRSF = "Airector DESSF_Y2"
    QuantityCEICECRSF = "10"
    CoastCEICECRSF = "10"
    PriceCEICECRSF = "50"
    ResourceCategoryCEICSF = "Staff Resource"
    EventTitleCEICEIE = "RandomizedX_Y2"
    EventClassificationCEICEIE = "RAnDom Data_Y2"
    StartDateCEICEIE = "1/10/2016"
    StartTimeCEICEIE = "1:"
    MECEICEIE1 = "AM"
    EndDateCEICEIE = "1/11/2016"
    EndTimeCEICEIE = "3:"
    EventContactTypeCEICIER = "Billable Contact"
    NoteTypeCEI = "Other"
    NoteTextCEICIER = "Note Text_Y2"

    # ----------------------------------------Financial------------------------------------------------------------

    # Apply/Adjust Fees

    FirstNameAF = "Mike_B3"
    LastNameAF = "Test"
    ClassificationAF = "Student"
    SubclassificationAF = "Off Campus"
    SelectFeeAF = "NSF Fee"
    AdjustmentAF = -10
    ReasonAF = "Fee Adjustment"
    BalanceDue = None

    # WI #48813 - Pay for Misc. Sale Item in Basket using Cash Payment Method

    CodeGLA = "PMSGA_B2"
    DescriptionGLA = "DescriptionPMSGLA_B2"
    CodePMCD = "PMSCD_B2"
    DescriptionPMCD = "DescriptionPMSCD_B2"
    DescriptionMisc = "MiscDescription_B2"

    DropdownValueGLA = "General Ledger Account"
    DropdownValueCD = "Cash Drawer"
    DropdownValueMisc = " Misc. Sale Items/Fees "
    AmountMisc = "10"
    MiscCategory = "Sale Item"
    GlAccountMisc = "MISCELLANEOUS"
    PaymentMethodMisc = "Cash"
    ReferenceMisc = "Cash payment"

    # ----------------------------------------Permits------------------------------------------------------------

    # WI #48868 - Tasks: Permit Auto-Renewals

    SeriesStartPAR = "1011"
    SeriesEndPAR = "1020"
    CashDrawerCodePAR = "PARCD_P2"
    CashDrawerDescriptionPAR = "PACDD_P2"
    FirstNamePAR = "Madhavi_P2"

    SeriesTypePAR = "Inventoried"
    PermitTypePAR = "Value Credential"
    SeriesPrefixPAR = "PAR_P2"
    SeriesCharWidthPAR = "10"
    DescriptionPAR = "Automated Access Permits"

    NamePAR = "Auto Access Permits Control Group"
    DefPerGLAccountPAR = "MISCELLANEOUS"
    RefundGLAccountPAR = "MISCELLANEOUS"
    RateAmountPAR = 100
    FacilitiesPAR = "Facility A"

    PermitAllacoationPAR = SeriesPrefixPAR + SeriesStartPAR + " through " + SeriesPrefixPAR + SeriesEndPAR
    PermitStartPAR = SeriesPrefixPAR + SeriesStartPAR
    PermitEndPAR = SeriesPrefixPAR + SeriesEndPAR
    PermitNumberPAR = SeriesPrefixPAR + SeriesStartPAR
    DrawerPAR = "Auto Cash 188"

    LastNamePAR = "Latha"
    ClassificationPAR = "Student"
    SubclassificationPAR = "Off Campus"

    RenewalDescriptionPAR = "Renewal Schedule_P2"
    ExpirationDateUponPAR = "Full Payment"
    RenewalTypePAR = "Extend Expiration Date"
    TermTypePAR = "Day"
    TermLengthPAR = 30
    TotalFeeAmountPAR = 50
    RenewalPeriodStartsPAR = 10
    GracePeriodPAR = 10

    CashDrawerSelect = "Cash Drawer"
    PaymentMethodPAR = "Cash"
    TaskNamePAR = "Automated Permit Renewal"
    ScheduleDescriptionPAR = "Automated Permit Renewal"
    TaskTypePAR = "Permit Auto-Renewals"
    TimePeriodPAR = "One time"
    RenewalTypePAR = "Extend Expiration Date"
    CustomerSubclassificationPAR = ClassificationPAR + ": " + SubclassificationPAR

    # Allocate Permits to Cash Drawers
    SeriesStartCD = "1011"
    SeriesEndCD = "1020"
    SeriesTypeCD = "Inventoried"
    PermitTypeCD = "Value Credential"
    SeriesPrefixCD = "BL_P2"
    SeriesCharWidthCD = "9"
    DescriptionCD = "Automated Credentials"
    Facilities = "Facility A"
    NameCD = "Auto Credentials Control Group"
    DefPerGLAccountCD = "MISCELLANEOUS"
    DefPerGLAccountCD = "MISCELLANEOUS"
    ValuePermissionTypeCD = "MISCELLANEOUS"
    EffectiveDate = "1/1/2017"
    ExpirationDate = "1/1/2018"
    AvailableForSaleDate = "1/1/2017"
    AvailableEndDate = "1/1/2018"
    RateAmountCD = 5

    PermitAllacoationCD = SeriesPrefixCD + SeriesStartCD + " through " + SeriesPrefixCD + SeriesEndCD
    PermitStartCD = SeriesPrefixCD + SeriesStartCD
    PermitEndCD = SeriesPrefixCD + SeriesEndCD
    PermitNumberCD = SeriesPrefixCD + SeriesStartCD

    # Sell a Value Credential permit
    SeriesPrefixVC = "AC_P2"

    SeriesStartVC = "1001"
    SeriesEndVC = "1010"
    SeriesTypeVC = "Inventoried"
    PermitTypeVC = "Value Credential"

    SeriesCharWidthVC = "9"
    DescriptionVC = "Automated Value Credentials"
    RefundGLAccount = "MISCELLANEOUS"
    NameVC = "Auto Credentials Control Group"
    DefPerGLAccountVC = "MISCELLANEOUS"
    RefundGLAccountVC = "MISCELLANEOUS"
    ValuePermissionType = "Uses"
    DefaultValue = 3
    RateAmountVC = 5
    FirstNameVC = "Andrew"
    LastNameVC = "Flintop4"
    ClassificationVC = "Student"
    SubclassificationVC = "Off Campus"
    PermitAllacoationVC = SeriesPrefixVC + SeriesStartVC + " through " + SeriesPrefixVC + SeriesEndVC
    PermitStartVC = SeriesPrefixVC + SeriesStartVC
    PermitEndVC = SeriesPrefixVC + SeriesEndVC
    PermitNumberVC = SeriesPrefixVC + SeriesStartVC
    DrawerVC = "Citation Office 1"
    PaymentMethodVC = "Cash"

    # Pay for Permit-Third

    SeriesStartTP = "101"
    SeriesEndTP = "110"
    CGRangeIDTP = "3887"
    SeriesTypeTP = "Inventoried"
    PermitTypeTP = "Value Credential"
    SeriesPrefixTP = "APT_P2"
    SeriesCharWidthTP = "9"
    DescriptionTP = "Automated Access Permits"
    NameTP = "Auto Access Permits Control Group"
    DefPerGLAccountTP = "MISCELLANEOUS"
    ValuePermissionTypeTP = "MISCELLANEOUS"
    RateAmount = 100

    PermitAllacoation = SeriesPrefixTP + SeriesStartTP + " through " + SeriesPrefixTP + SeriesEndTP
    PermitStart = SeriesPrefixTP + SeriesStartTP
    PermitEnd = SeriesPrefixTP + SeriesEndTP
    PermitNumber = SeriesPrefixTP + SeriesStartTP
    Drawer = "Citation Office 1"
    FirstNameTP = "James"
    LastNameTP = "Camroon_P2"
    ClassificationTP = "Student"
    SubclassificationTP = "Off Campus"
    ThirdPartyName = "Third Party AP"
    TPContactName = "Third Party Contact Name"
    LookUpTable = "Cash Drawer"
    Code = "AuCDT_P2"
    Description = "Automation Cash Drawer For CDT_P2"
    PaymentMethod = "Third Party"

    # WI #48840 - Vehicles: Link Vehicles to Customer and Permit
    SeriesStartLV = "101"
    SeriesEndLV = "110"

    SeriesTypeLV = "Inventoried"
    PermitTypeLV = "Value Credential"
    SeriesPrefixLV = "LV_P2"
    SeriesCharWidthLV = 8
    DescriptionLV = "Automated Access Permits"
    Facilities = "Facility A"
    NameLV = "Auto Access Permits Control Group"
    DefPerGLAccountLV = "MISCELLANEOUS"
    RefundGLAccountLV = "MISCELLANEOUS"
    RateAmountLV = 100

    PermitAllacoationLV = SeriesPrefixLV + SeriesStartLV + " through " + SeriesPrefixLV + SeriesEndLV
    PermitStartLV = SeriesPrefixLV + SeriesStartLV
    PermitEndLV = SeriesPrefixLV + SeriesEndLV
    PermitNumberLV = SeriesPrefixLV + SeriesStartLV
    DrawerLV = "Citation Office 1"

    FirstNameLV = "Andrew_P2"
    LastNameLV = "Flintop"
    ClassificationLV = "Student"
    SubclassificationLV = "Off Campus"

    # WI #48882 - Change Price of Permits During Sale
    SeriesStartPDS = "1031"
    SeriesEndPDS = "1040"

    SeriesTypePDS = "Inventoried"
    PermitTypePDS = "Value Credential"
    SeriesPrefixPDS = "PDS_P2"
    SeriesCharWidthPDS = "9"
    DescriptionPDS = "Automated Credentials"

    NamePDS = "Auto Credentials Control Group"
    DefPerGLAccountPDS = "MISCELLANEOUS"
    ValuePermissionTypePDS = "MISCELLANEOUS"
    RateAmountPDS = 100
    PermitAllacoationPDS = SeriesPrefixPDS + SeriesStartPDS + " through " + SeriesPrefixPDS + SeriesEndPDS
    PermitStartPDS = SeriesPrefixPDS + SeriesStartPDS
    PermitEndPDS = SeriesPrefixPDS + SeriesEndPDS
    PermitNumberPDS = SeriesPrefixPDS + SeriesStartPDS
    DrawerPDS = "Citation Office 1"

    FirstNamePDS = "Joe"
    LastNamePDS = "Root_P2"
    ClassificationPDS = "Student"
    SubclassificationPDS = "Off Campus"
    CardNumber = "4012888888881881"
    CVV = "1234"
    ExpDateMon = "February"
    ExpDateYear = "2020"

    # WI #48868 - Tasks: CSP-Fixed Effective Date

    SeriesPrefixFED = "FED_P2"
    FirstNameFED = "MadhaviFED_P2"

    SeriesTypeFED = "Inventoried"
    PermitTypeFED = "Access Hangtag"
    SeriesStartFED = "111"
    SeriesEndFED = "120"
    SeriesCharWidthFED = "9"
    DescriptionFED = "Automated Access Permits"

    NameFED = "Auto Access Permits Control Group"
    DefPerGLAccountFED = "MISCELLANEOUS"
    RefundGLAccountFED = "MISCELLANEOUS"
    DailyRateFED = 100
    FacilitiesFED = "Fac 2"

    PermitAllacoationFED = SeriesPrefixFED + SeriesStartFED + " through " + SeriesPrefixFED + SeriesEndFED
    PermitStartFED = SeriesPrefixFED + SeriesStartFED
    PermitEndFED = SeriesPrefixFED + SeriesEndFED
    PermitNumberFED = SeriesPrefixFED + SeriesStartFED
    DrawerFED = "LOYALTY"

    LastNameFED = "test"
    ClassificationFED = "Student"
    SubclassificationFED = "On Campus"
    PaymentMethodFED = "Cash"
    EffectiveDateFED = "5/1/2017"
    ExpirationDateFED = "8/1/2018"

    # WI #48868 - Tasks: CSP-Current Date

    SeriesPrefixCSPCD = "CCD_P2"
    FirstNameCSPCD = "MadhaviCCD_P2"

    SeriesTypeCSPCD = "Inventoried"
    PermitTypeCSPCD = "Access Hangtag"
    SeriesStartCSPCD = "111"
    SeriesEndCSPCD = "120"
    SeriesCharWidthCSPCD = "9"
    DescriptionCSPCD = "Automated Access Permits"

    NameCSPCD = "Auto Access Permits Control Group"
    DefPerGLAccountCSPCD = "MISCELLANEOUS"
    RefundGLAccountCSPCD = "MISCELLANEOUS"
    DailyRateCSPCD = 100
    FacilitiesCSPCD = "Fac 2"
    PermitAllacoationCSPCD = SeriesPrefixCSPCD + SeriesStartCSPCD + " through " + SeriesPrefixCSPCD + SeriesEndCSPCD
    PermitStartCSPCD = SeriesPrefixCSPCD + SeriesStartCSPCD
    PermitEndCSPCD = SeriesPrefixCSPCD + SeriesEndCSPCD
    PermitNumberCSPCD = SeriesPrefixCSPCD + SeriesStartCSPCD
    DrawerCSPCD = "LOYALTY"
    LastNameCSPCD = "test"
    ClassificationCSPCD = "Student"
    SubclassificationCSPCD = "On Campus"
    PaymentMethodCSPCD = "Cash"
    ExpirationDateCSPCD = "1/1/2018"

    # WI #48827 - CSP- -Fixed-Set at Point of Sale

    SeriesStartCSP = "100"
    SeriesEndCSP = "110"
    FirstNameCSP = "MIKKI_P2"
    LastNameCSP = "MAY_P2"

    DescriptionCSP = "Automated Access Permits"
    SeriesTypeCSP = "Inventoried"
    PermitTypeCSP = "Access Hangtag"
    SeriesPrefixCSPType = "Series Prefix"
    SeriesPrefixCSP = "FIX_P2"

    MonthCSP = "10"
    SeriesCharWidthCSP = "9"
    LookUpTableCSP = "Cash Drawer"
    NameCSP = "Auto Access Permits Control Group"
    DefPerGLAccountCSP = "MISCELLANEOUS"
    RefundGLAccountCSP = "MISCELLANEOUS"
    RateAmountCSP = "100"
    CashDrawerDescriptionCSP = "Automation Cash Drawer_P2"
    PermitAllacoationCSP = SeriesPrefixCSP + SeriesStartCSP + " through " + SeriesPrefixCSP + SeriesEndCSP
    PermitStartCSP = SeriesPrefixCSP + SeriesStartCSP
    PermitEndCSP = SeriesPrefixCSP + SeriesEndCSP
    PermitNumberCSP = SeriesPrefixCSP + SeriesStartCSP
    ClassificationCSP = "Student"
    SubclassificationCSP = "Off Campus"
    CashDrawerSelectCSP = "Cash Drawer"
    PaymentMethodCSP = "Cash"
    AvailableForSaleDateCSP = "1/1/2017"
    AvailableEndDateCSP = "1/1/2018"

    # WI #48868 - Tasks: SBP-xMonth

    SeriesPrefixSBPM = "SBPX_P2"
    FirstNameSBPM = "MadhaviSBPM_P2"
    CashDrawerCodeSBPM = "CodSBP_P2"
    CashDrawerDescriptionSBPM = "DescriptionSBPMonth_P2"

    SeriesStartSBPM = "111"
    SeriesEndSBPM = "120"
    SeriesTypeSBPM = "Inventoried"
    PermitTypeSBPM = "Access Hangtag"
    SeriesCharWidthSBPM = "10"
    DescriptionSBPM = "Automated Access Permits"

    NameSBPM = "Auto Access Permits Control Group"
    DefPerGLAccountSBPM = "MISCELLANEOUS"
    RefundGLAccountSBPM = "MISCELLANEOUS"
    MonthsSBPM = "3"
    SaleFeeSBPM = 100
    FacilitiesSBPM = "Fac 2"

    PermitAllacoationSBPM = SeriesPrefixSBPM + SeriesStartSBPM + " through " + SeriesPrefixSBPM + SeriesEndSBPM
    PermitStartSBPM = SeriesPrefixSBPM + SeriesStartSBPM
    PermitEndSBPM = SeriesPrefixSBPM + SeriesEndSBPM
    PermitNumberSBPM = SeriesPrefixSBPM + SeriesStartSBPM
    DrawerSBPM = "LOYALTY"

    LastNameSBPM = "test"
    ClassificationSBPM = "Student"
    SubclassificationSBPM = "On Campus"
    EffectiveDateSBPM = "5/1/2018"
    ExpirationDateSBPM = "8/1/2018"
    PaymentMethodSBPM = "Cash"

    # WI #48868 - Tasks: SBP-Point of sale

    SeriesPrefixSBPP = "SBPP_P2"
    FirstNameSBPP = "MadhaviSBPP_P2"
    CashDrawerCodeSBPP = "CodPOS_P2"
    CashDrawerDescriptionSBPP = "DescriptionSBPPOS_P2"

    SeriesStartSBPP = "111"
    SeriesEndSBPP = "120"
    SeriesTypeSBPP = "Inventoried"
    PermitTypeSBPP = "Access Hangtag"
    SeriesCharWidthSBPP = "10"
    DescriptionSBPP = "Automated Access Permits"

    NameSBPP = "Auto Access Permits Control Group"
    DefPerGLAccountSBPP = "MISCELLANEOUS"
    RefundGLAccountSBPP = "MISCELLANEOUS"
    MonthsSBPP = "3"
    DailyRateSBPP = 30
    FacilitiesSBPP = "Fac 2"

    PermitAllacoationSBPP = SeriesPrefixSBPP + SeriesStartSBPP + " through " + SeriesPrefixSBPP + SeriesEndSBPP
    PermitStartSBPP = SeriesPrefixSBPP + SeriesStartSBPP
    PermitEndSBPP = SeriesPrefixSBPP + SeriesEndSBPP
    PermitNumberSBPP = SeriesPrefixSBPP + SeriesStartSBPP
    DrawerSBPP = "LOYALTY"

    LastNameSBPP = "test"
    ClassificationSBPP = "Student"
    SubclassificationSBPP = "On Campus"
    EffectiveDateSBPP = "5/1/2017"
    ExpirationDateSBPP = "8/1/2018"
    PaymentMethodSBPP = "Cash"

    # SBP-fixed date


    SeriesPrefixSBPF = "SBPF_P4"
    FirstNameSBPF = "MadhaviSBPF_P4"
    CashDrawerCodeSBPF = "CDSPF_P4"
    CashDrawerDescriptionSBPF = "DescriptionSBPFD_P4"

    SeriesStartSBPF = "111"
    SeriesEndSBPF = "120"
    SeriesTypeSBPF = "Inventoried"
    PermitTypeSBPF = "Access Hangtag"
    SeriesCharWidthSBPF = "10"
    DescriptionSBPF = "Automated Access Permits"

    NameSBPF = "Auto Access Permits Control Group"
    DefPerGLAccountSBPF = "MISCELLANEOUS"
    RefundGLAccountSBPF = "MISCELLANEOUS"
    RateAmountSBPF = 30
    FacilitiesSBPF = "Fac 2"

    PermitAllacoationSBPF = SeriesPrefixSBPF + SeriesStartSBPF + " through " + SeriesPrefixSBPF + SeriesEndSBPF
    PermitStartSBPF = SeriesPrefixSBPF + SeriesStartSBPF
    PermitEndSBPF = SeriesPrefixSBPF + SeriesEndSBPF
    PermitNumberSBPF = SeriesPrefixSBPF + SeriesStartSBPF
    DrawerSBPF = "LOYALTY"

    LastNameSBPF = "test"
    ClassificationSBPF = "Student"
    SubclassificationSBPF = "On Campus"
    EffectiveDateSBPF = "5/1/2017"
    ExpirationDateSBPF = "8/1/2018"
    PaymentMethodSBPF = "Cash"

    # WI #48888 - Change the status of an Inventoried permit directly on Permit View

    SeriesPrefixCIP = "CSIP_5"
    FirstNameCIP = "MadhaviCIP_5"
    CodeCDCIP = "CDCIP_5"
    DescriptionCDCIP = "DescriptionCDCIP_5"

    SeriesTypeCIP = "Inventoried"
    PermitTypeCIP = "Access Hangtag"
    SeriesStartCIP = "111"
    SeriesEndCIP = "120"
    SeriesCharWidthCIP = 9
    DescriptionCIP = "Automated Access Permits"
    NameCIP = "Auto Access Permits Control Group"
    DefPerGLAccountCIP = "MISCELLANEOUS"
    RefundGLAccountCIP = "MISCELLANEOUS"
    EffectiveDateCIP = "1/1/2017"
    ExpirationDateCIP = "1/1/2018"
    FacilitiesCIP = "Fac 1"
    RateAmountCIP = 30

    PermitAllacoationCIP = SeriesPrefixCIP + SeriesStartCIP + " through " + SeriesPrefixCIP + SeriesEndCIP
    PermitStartCIP = SeriesPrefixCIP + SeriesStartCIP
    PermitEndCIP = SeriesPrefixCIP + SeriesEndCIP
    PermitNumberCIP = SeriesPrefixCIP + SeriesStartCIP

    DrawerCIP = "Auto Cash 195"
    LastNameCIP = "KUMAR"
    ClassificationCIP = "Student"
    SubclassificationCIP = "On Campus"
    TypeCIP = "Mailing"
    PrimaryStreetCIP = "12345 West Street"
    CityCIP = "Indianapolis"
    StateCIP = "INDIANA"
    DropdownValueCIP = "Cash Drawer"

    MissingReasonCIP = "Lost"
    AddressCIP = "(Mailing) 12345 Blue2 Street  , Indianapolis"
    PaymentMethodCIP = "Cash"
    DeactivateReasonCIP = 'Suspend'
    ExpirationDateCIP1 = "05/24/2017"
    ExpirationDateCIP2 = "01/01/2018"

    # Refund Permits
    SeriesStartRFP = "1011"
    SeriesEndRFP = "1020"
    NameRFP = "Babu"
    FirstNameRFP = "Bikram_B9"
    LastNameRFP = "KUMAR"
    CodeRFP1 = "Auto_B9"
    DescriptionRFP1 = "Automation Cash Drawer1_B9"

    SeriesTypeRFP = "Inventoried"
    PermitTypeRFP = "Access Hangtag"
    SeriesPrefixRFP = "TK_B9"
    SeriesCharWidthRFP = 9
    DescriptionRFP = "Automated Access Permits_B9"
    DefPerGLAccountRFP = "MISCELLANEOUS"
    RefundGLAccountRFP = "MISCELLANEOUS"
    EffectiveDateRFP = "1/1/2017"
    ExpirationDateRFP = "1/1/2018"
    FacilitiesRFP = "Fac 1"
    RateAmountRFP = 100
    RefundScheduleRFP = 10
    PermitAllacoationRFP = SeriesPrefixRFP + SeriesStartRFP + " through " + SeriesPrefixRFP + SeriesEndRFP
    PermitStartRFP = SeriesPrefixRFP + SeriesStartRFP
    PermitEndRFP = SeriesPrefixRFP + SeriesEndRFP
    PermitNumberRFP = SeriesPrefixRFP + SeriesStartRFP
    DrawerRFP = "LOYALTY"
    ClassificationRFP = "Student"
    SubclassificationRFP = "On Campus"
    TypeRFP = "Mailing"
    PrimaryStreetRFP = "12345 West Street"
    CityRFP = "Indianapolis"
    StateRFP = "INDIANA"
    DropdownValueRFP = "Cash Drawer"
    PaymentMethodRFP = "Cash"
    ReturnDateRFP = "05/26/2017"
    ReturnReasonRFP = "Returned for Refund"

    # WI #48868 - Tasks: Return Permits

    CashDrawerCodeRP = "CdERP_B7"
    CashDrawerDescriptionRP = "DescriptionRP_B7"
    FirstNameRP = "MadhaviRP_B7"
    SeriesPrefixRP = "RP_B7"

    SeriesStartRP = "1101"
    SeriesEndRP = "1110"
    SeriesTypeRP = "Inventoried"
    PermitTypeRP = "Access Hangtag"
    SeriesCharWidthRP = "9"
    DescriptionRP = "Automated Access Permits"

    NameRP = "Auto Access Permits Control Group"
    DefPerGLAccountRP = "MISCELLANEOUS"
    RefundGLAccountRP = "MISCELLANEOUS"
    EffectiveDateRP = "1/1/2017"
    ExpirationDateRP = "1/1/2018"
    RateAmountRP = 100
    FacilitiesRP = "Fac 5"

    PermitAllacoationRP = SeriesPrefixRP + SeriesStartRP + " through " + SeriesPrefixRP + SeriesEndRP
    PermitStartRP = SeriesPrefixRP + SeriesStartRP
    PermitEndRP = SeriesPrefixRP + SeriesEndRP
    PermitNumberRP = SeriesPrefixRP + SeriesStartRP

    LastNameRP = "Latha"
    ClassificationRP = "Student"
    SubclassificationRP = "On Campus"
    PaymentMethodRP = "Cash"

    TypeRP = "Mailing"
    PrimaryStreetRP = "12345 West Street"
    CityRP = "Indianapolis"
    StateRP = "INDIANA"
    ReturnReasonRP = "Returned for Refund"

    # WI #48866 - PAD- Selling permits

    CodeCCSP = "CCSP_P2"
    DescriptionCCSP = "DescriptionCCSP_P2"
    CodeCSSP = "CSSP_P2"
    DescriptionCSSP = "DescriptionCSSP_P2"
    CodeTASP = "TASP_P2"
    DescriptionTASP = "DescriptionTASP_P2"
    CodePMSP = "PMSP_P2"
    DescriptionPMSP = "DescriptionPMSP_P2"
    CodeCDSP = "CDSP_P2"
    DescriptionCDSP = "DescriptionCDSP_P2"
    SeriesPrefixSP = "SP_P2"
    FirstNameSP = "MadhaviSP_P2"

    DropdownValueCCSP = "Customer Classification"
    DropdownValueCSSP = "Customer Subclassification"
    PermitLimitSP = "1000"
    DropdownValueTASP = "Transfer Agency"
    TermTypeSP = "Day"
    TermLengthSP = "30"
    DropdownValuePMSP = "Payment Method"
    PaymentTypeSP = "Pre-Authorized Deduction"
    FilterSP = "Payment Method"
    DropdownCDSP = "Cash Drawer"
    FilterFSP = "FinancialType"
    FinancialTypeSP = "permission"

    SeriesTypeSP = "Inventoried"
    PermitTypeSP = "Access Hangtag"
    SeriesStartSP = "111"
    SeriesEndSP = "120"
    SeriesCharWidthSP = 7
    DescriptionSP = "Automated Access Permits"

    NameSP = "Auto Access Permits Control Group"
    DefPerGLAccountSP = "MISCELLANEOUS"
    RefundGLAccountSP = "MISCELLANEOUS"
    ExpirationDateSP = "5"
    AvailableForSaleDateSP = "1/1/2017"
    AvailableEndDateSP = "1/1/2018"
    SaleFeeSP = 100
    FacilitiesSP = "Fac 5"

    PermitAllacoationSP = SeriesPrefixSP + SeriesStartSP + " through " + SeriesPrefixSP + SeriesEndSP
    PermitStartSP = SeriesPrefixSP + SeriesStartSP
    PermitEndSP = SeriesPrefixSP + SeriesEndSP
    PermitNumberSP = SeriesPrefixSP + SeriesStartSP

    RenewalDescriptionSP = "Renewal Schedule 1"
    ExpirationDateUponSP = "Full Payment"
    RenewalTypeSP = "Extend Expiration Date"
    TotalFeeAmountSP = 50
    RenewalPeriodStartsSP = 10
    GracePeriodSP = 10
    LastNameSP = "test"

    # WI #48866 - PAD-Export  task

    CodeCCET = "CCET_P2"
    DescriptionCCET = "DescriptionCCET_P2"
    CodeCSET = "CSET_P2"
    DescriptionCSET = "DescriptionCSET_P2"
    CodeTAET = "TAET_P2"
    DescriptionTAET = "DescriptionTAET_P2"
    CodePMET = "PMET_P2"
    DescriptionPMET = "DescriptionPMET_P2"
    CodeCDET = "CDET_P2"
    DescriptionCDET = "DescriptionCDET_P2"
    SerieETrefixET = "ET_P2"
    FirstNameET = "MadhaviET_P2"

    DropdownValueCCET = "Customer Classification"
    DropdownValueCSET = "Customer Subclassification"
    PermitLimitET = "1000"
    DropdownValueTAET = "Transfer Agency"
    TermTypeET = "Day"
    TermLengthET = "30"
    DropdownValuePMET = "Payment Method"
    PaymentTypeET = "Pre-Authorized Deduction"
    FilterET = "Payment Method"
    DropdownCDET = "Cash Drawer"
    FilterFET = "FinancialType"
    FinancialTypeET = "permission"

    SeriesTypeET = "Inventoried"
    PermitTypeET = "Access Hangtag"
    SeriesStartET = "111"
    SeriesEndET = "120"
    SeriesCharWidthET = 7
    DescriptionET = "Automated Access Permits"

    NameET = "Auto Access Permits Control Group"
    DefPerGLAccountET = "MISCELLANEOUS"
    RefundGLAccountET = "MISCELLANEOUS"
    ExpirationDateET = "5"
    AvailableForSaleDateET = "1/1/2017"
    AvailableEndDateET = "1/1/2018"
    SaleFeeET = 100
    FacilitiesET = "Fac 5"

    PermitAllacoationET = SerieETrefixET + SeriesStartET + " through " + SerieETrefixET + SeriesEndET
    PermitStartET = SerieETrefixET + SeriesStartET
    PermitEndET = SerieETrefixET + SeriesEndET
    PermitNumberET = SerieETrefixET + SeriesStartET

    RenewalDescriptionET = "Renewal Schedule 1"
    ExpirationDateUponET = "Full Payment"
    RenewalTypeET = "Extend Expiration Date"
    TotalFeeAmountET = 50
    RenewalPeriodStartsET = 10
    GracePeriodET = 10
    LastNameET = "test"

    TaskNameET = "Pre-Auth Deduction Export"
    ScheduleDescriptionET = "Pre-Auth Deduction Export"
    TaskTypeET = "Pre-Auth Deduction Export"
    TimePeriodET = "One time"
    SelectAndOrderFieldsET = "Amount Received_T2FIELD"
    ExportFilePathET = "C:/export/"
    ExportFileNameET = "test.txt"

    # WI #48866 - PAD-Renewing permits

    CodeCCRPD = "CCRPD_P2"
    DescriptionCCRPD = "DescriptionCCRPD_P2"
    CodeCSRPD = "CSRPD_P2"
    DescriptionCSRPD = "DescriptionCSRPD_P2"
    CodRPDARPD = "TARPD_P2"
    DescriptionTARPD = "DescriptionTARPD_P2"
    CodePMRPD = "PMRPD_P2"
    DescriptionPMRPD = "DescriptionPMRPD_P2"
    CodeCDRPD = "CDRPD_P2"
    DescriptionCDRPD = "DescriptionCDRPD_P2"
    SerieRPDrefixRPD = "RPD_P2"
    FirstNameRPD = "MadhaviRPD_P2"

    DropdownValueCCRPD = "Customer Classification"
    DropdownValueCSRPD = "Customer Subclassification"
    PermitLimitRPD = "1000"
    DropdownValuRPDARPD = "Transfer Agency"
    TermTypeRPD = "Day"
    TermLengthRPD = "30"
    DropdownValuePMRPD = "Payment Method"
    PaymentTypeRPD = "Pre-Authorized Deduction"
    FilterRPD = "Payment Method"
    DropdownCDRPD = "Cash Drawer"
    FilterFRPD = "FinancialType"
    FinancialTypeRPD = "permission"

    SeriesTypeRPD = "Inventoried"
    PermitTypeRPD = "Access Hangtag"
    SeriesStartRPD = "111"
    SeriesEndRPD = "120"
    SeriesCharWidthRPD = 8
    DescriptionRPD = "Automated Access Permits"

    NameRPD = "Auto Access Permits Control Group"
    DefPerGLAccountRPD = "MISCELLANEOUS"
    RefundGLAccountRPD = "MISCELLANEOUS"
    ExpirationDateRPD = "5"
    AvailableForSaleDateRPD = "1/1/2017"
    AvailableEndDateRPD = "1/1/2018"
    SaleFeeRPD = 100
    FacilitiesRPD = "Fac 5"

    PermitAllacoationRPD = SerieRPDrefixRPD + SeriesStartRPD + " through " + SerieRPDrefixRPD + SeriesEndRPD
    PermitStartRPD = SerieRPDrefixRPD + SeriesStartRPD
    PermitEndRPD = SerieRPDrefixRPD + SeriesEndRPD
    PermitNumberRPD = SerieRPDrefixRPD + SeriesStartRPD

    RenewalDescriptionRPD = "Renewal Schedule 1"
    ExpirationDateUponRPD = "Full Payment"
    RenewalTypeRPD = "Extend Expiration Date"
    TotalFeeAmountRPD = 50
    RenewalPeriodStartsRPD = 10
    GracePeriodRPD = 10
    LastNameRPD = "test"

    TaskNameRPD = "Pre-Auth Deduction Export"
    ScheduleDescriptionRPD = "Pre-Auth Deduction Export"
    TaskTypeRPD = "Pre-Auth Deduction Export"
    TimePeriodRPD = "One time"
    SelectAndOrderFieldsRPD = "Amount Received_T2FIELD"
    ExportFilePathRPD = "C:/export/"
    ExportFileNameRPD = "test.txt"

    TaskNameRPD1 = "Automated Permit Renewal"
    ScheduleDescriptionRPD1 = "Automated Permit Renewal"
    TaskTypeRPD1 = "Permit Auto-Renewals"
    PermitControlGroupsRPD = "Auto Access Permits Control Group(2210)"
    ClassificationRPD = DescriptionCCRPD + ": " + DescriptionCSRPD

    # Flex Automation - WI #48948 - Editing Permit Manager


    SeriesTypeTN = "Inventoried"
    PermitTypeTN = "Pay On Entry"
    SeriesPrefixTN = "TL_N6"
    SeriesStartTN = "101"
    SeriesEndTN = "110"
    SeriesCharWidthTN = 8
    DescriptionTN = "AutomatedAccPer_N6"
    NameTN = "Auto Access Permits Control Group"
    DefPerGLAccountTN = "Miscellaneous"
    RefundGLAccountTN = "Miscellaneous"
    EffectiveDateTN = 1 / 1 / 2017
    ExpirationDateTN = 1 / 1 / 2017
    FacilitiesTN = "FacilityA"
    RateAmountTN = 30.00
    PermitStartTN = "BL001"
    PermitEndTN = "BL100"
    FirstNameTN = "Clark"
    LastNameTN = "Test"
    ClassificationTN = "BL"
    SubclassificationTN = "BL1"
    DropdownValueTN = "Cash Drawer"
    CashDrawerCodeTN = "TL"
    CashDrawerDescriptionTN = "TL1"
    CashDrawerDescriptionTN = "BL1"
    LastNameTN = "Test"
    FirstNameTN = "Clark_N6"
    PermitNumberTN = "125"
    PaymentMethodTN = "Cash"

    # ----------------------------------------ThirdParty---------------------------------------------------------

    # WI #48868 - Tasks: Generate Invoices

    SeriesStartGI = "120"
    SeriesEndGI = "130"
    CashDrawerCodeGI = "GICD_P2"
    CashDrawerDescriptionGI = "GUCD_P2"
    ThirdPartyNameGI = "ThirdPartyGI8"
    FirstNameGI = "Peter_P2"
    LastNameGI = "Parker_P2"

    SeriesTypeGI = "Inventoried"
    PermitTypeGI = "Value Credential"
    SeriesPrefixGI = "GI_P2"
    SeriesCharWidthGI = "8"
    DescriptionGI = "Automated Access Permits"
    NameGI = "Auto Access Permits Control Group"
    DefPerGLAccountGI = "MISCELLANEOUS"
    RefundGLAccountGI = "MISCELLANEOUS"
    RateAmountGI = 100
    FacilitiesGI = "Fac 2"
    PermitAllacoationGI = SeriesPrefixGI + SeriesStartGI + " through " + SeriesPrefixGI + SeriesEndGI
    PermitStartGI = SeriesPrefixGI + SeriesStartGI
    PermitEndGI = SeriesPrefixGI + SeriesEndGI
    PermitNumberGI = SeriesPrefixGI + SeriesStartGI
    DrawerGI = "Citation Office 1"
    ClassificationGI = "Student"
    SubclassificationGI = "On Campus"
    ContactNameGI = "Third Party Contact Name"
    CashDrawerSelectGI = "Cash Drawer"
    PaymentMethodGI = "Cash"
    TypeGI = "Web"
    PrimaryStreetGI = "123 East Road"
    CityGI = "Denver"
    StateGI = "COLORADO "

    # Allocate Permits to Pay Off Invoices
    SeriesStartPOI = "100"
    SeriesEndPOI = "110"
    SeriesTypePOI = "Inventoried"
    PermitTypePOI = "Value Credential"
    SeriesPrefixPOI = "POI_P2"
    SeriesCharWidthPOI = "9"
    DescriptionPOI = "Automated Access Permits"
    NamePOI = "Auto Access Permits Control Group"
    DefPerGLAccountPOI = "MISCELLANEOUS"
    RefundGLAccountPOI = "MISCELLANEOUS"
    RateAmountPOI = "100"
    PermitAllacoationPOI = SeriesPrefixPOI + SeriesStartPOI + " through " + SeriesPrefixPOI + SeriesEndPOI
    PermitStartPOI = SeriesPrefixPOI + SeriesStartPOI
    PermitEndPOI = SeriesPrefixPOI + SeriesEndPOI
    DrawerPOI = "Citation Office 1"
    FirstNamePOI = "jack_P2"
    LastNamePOI = "spicer_P2"
    ClassificationPOI = "Student"
    SubclassificationPOI = "On Campus"
    ThirdPartyNamePOI = "ThirdPartyGI8"
    PermitNumberPOI = SeriesPrefixPOI + SeriesStartPOI
    PaymentMethodPOI = "Cash"

    # Pay for Permit-Third

    SeriesStartTPAI = "111"
    SeriesEndTPAI = "120"

    SeriesTypeTPAI = "Inventoried"
    PermitTypeTPAI = "Value Credential"
    SeriesPrefixTPAI = "TPI_P2"
    SeriesCharWidthTPAI = "9"
    FirstNameTPAI = "LA_P2"
    LastNameTPAI = "LAND_P2"
    DescriptionTPAI = "Automated Access Permits"
    NameTPAI = "Auto Access Permits Control Group"
    DefPerGLAccountTPAI = "MISCELLANEOUS"
    ValuePermissionTypeTPAI = "MISCELLANEOUS"
    PermitAllacoationTPAI = SeriesPrefixTPAI + SeriesStartTPAI + " through " + SeriesPrefixTPAI + SeriesEndTPAI
    PermitStartTPAI = SeriesPrefixTPAI + SeriesStartTPAI
    PermitEndTPAI = SeriesPrefixTPAI + SeriesEndTPAI
    PermitNumberTPAI = SeriesPrefixTPAI + SeriesStartTPAI
    DrawerTPAI = "Citation Office 1"

    ClassificationTPAI = "Student"
    SubclassificationTPAI = "On Campus"
    ThirdPartyNameTPAI = "ThirdPartyGI8"
    PaymentMethodTPAI = "Cash"

    # ----------------------------------------Vechiles------------------------------------------------------------

    # WI #48868 - Tasks: Edit a Boot Tow record

    FieldNameBT1 = "CustomeBT_P2"
    DisplayLabelBT1 = "Custom TextBT_P2"
    FieldNameBT2 = "CustomeINTBT_P2"
    DisplayLabelBT2 = "Custom IntegerBT_P2"
    LicensePlateBT = "EBT_P2"
    FirstNameBT = "MadhaviBT_P2"

    TableBT = "BOOTTOW"
    FieldBT = "BOT_UID(Boot/Tow UID)"
    DataTypeBT1 = "Text"
    MaxLengthBT1 = "24"
    DataTypeBT2 = "Integer"
    SelectRolesBT1 = "Access and Revenue Control"
    SelectRolesBT2 = "Permit and Enforcement"
    SelectRolesBT3 = "PermitNow"
    MaxLengthBT2 = "12"

    StateBT = "INDIANA"
    PlateTypeBT = "Passenger"

    LastNameBT = "test"
    ClassificationBT = "Student"
    SubclassificationBT = "On Campus"

    TypeBT = "Owner"
    TypeB = "Boot"
    TypeT = "Tow"
    CustomIntegerBT = "40882"
    CustomTextBT = "CustomeTextBT"
    CustomIntegerBTNew = "40883"
    CustomTextBTNew = "CustomeTextBTNew"

    # ------------------------------------------Customer----------------------------------------

    # WI #48838 - Merge Two Customer Records

    SeriesPrefixPnrMTCR = "AK_P2"
    SeriesStartPnrMTCR = "510"
    SeriesEndPnrMTCR = "515"
    SeriesPrefixPnr2MTCR = "BK_P2"
    SeriesStartPnr2MTCR = "520"
    SeriesEndPnr2MTCR = "525"
    CitationCodeCvcMTCR = "CCMTCR_P2"
    CitationDescriptionCvcMTCR = "DescriptionMTCR_P2"
    CitationCodeClMTCR = "CMTCR_P2"
    CitationDescriptionClMTCR = "DescriptionMTCR2_P2"
    CitationNumber1EciMTCR = "MCR1_P2"
    CitationNumber2EciMTCR = "MCR2_P2"
    SeriesCharWidthPnrMTCR = "8"
    CodeCashDrawerMTCR = "CDMCR_P2"
    DescriptionCashDrawerMTCR = "DescriptionCDMTCR_P2"
    CodeSellMTCR = "CSMCR_P2"
    DescriptionSellMTCR = "DescriptionCDMCR_P2"
    LicensePlateMTCR = "AB123_P2"
    LicensePlate2EciMTCR = "AB124_P2"
    LicensePlate1EciMTCR = "AB125_P2"
    CashDrawerCode2MTCR = "CDMCR1_P2"
    CashDrawerDescription2MTCR = "DescriptionCDMTCR1_P2"
    FirstNameMTCR = "AbhishekMCR1_P2"
    FirstNameScpMTCR = "AbhishekMCR2_P2"

    LastNameMTCR = "Kumar"
    LastNameScpMTCR = "Kumar"
    MakeEci1MTCR = "Acura"
    ModelEci1MTCR = "CL"
    StyleEci1MTCR = "Four Door"
    ColorEci1MTCR = "Black"
    PlateType1EciMTCR = "Motorcycle"
    PlateType2EciMTCR = "NA"
    ViolationCode1EciMTCR = "DESC QA101"
    Location1EciMTCR = "Citation Location 1"
    State1EciMTCR = "ALASKA"
    ThirdPartyNameMTCR = "THIRD PARTY AP"

    DescriptionPnrMTCR = "automated access"
    SeriesTypePnrMTCR = "Inventoried"
    PermitTypePnrMTCR = "Access Hangtag"
    ViolationCode2EciMTCR = "DESC QA102"
    Location2EciMTCR = "Citation Location 1"
    State2EciMTCR = "ALASKA"
    ZoneClMTCR = "Zone 1"

    NameMTCR = "Auto Credentials Control Group"
    DefPerGLAccountMTCR = "MISCELLANEOUS"
    ValuePermissionTypeMTCR = "MISCELLANEOUS"
    EffectiveDateMTCR = "1/1/2017"
    ExpirationDateMTCR = "1/1/2018"
    AvailableForSaleDateMTCR = "1/1/2017"
    AvailableEndDateMTCR = "1/1/2018"
    FacilitiesMTCR = "Fac 1"
    RateAmountMTCR = "100"

    PermitAllacoationMTCR = SeriesPrefixPnrMTCR + SeriesStartPnrMTCR + " through " + SeriesPrefixPnrMTCR + SeriesEndPnrMTCR
    PermitStartMTCR = SeriesPrefixPnrMTCR + SeriesStartPnrMTCR
    PermitEndMTCR = SeriesPrefixPnrMTCR + SeriesEndPnrMTCR

    PermitAllacoation2MTCR = SeriesPrefixPnr2MTCR + SeriesStartPnr2MTCR + " through " + SeriesPrefixPnr2MTCR + SeriesEndPnr2MTCR
    PermitStart2MTCR = SeriesPrefixPnr2MTCR + SeriesStartPnr2MTCR
    PermitEnd2MTCR = SeriesPrefixPnr2MTCR + SeriesEndPnr2MTCR

    LookUpTableMTCR = "Cash Drawer"

    DrawerMTCRDrawerMTCR = ""

    ClassificationMTCR = "Student"
    SubclassificationMTCR = "Off Campus"
    NameMTCR2 = "SATISH"
    ContactNameMTCR = "JK"
    CashDrawerMTCR = "Cash Drawer"

    OpenLoginCashDrawerRadioMTCR = "Auto Cash Drawer 190"

    DropdownCvcMTCR = "Citation Violation Code"
    BaseAmountCvcMTCR = 100
    GlAccountCvcMTCR = "GLS DES10"
    LongDescriptionCvcMTCR = "long desc a101"
    DropDownClMTCR = "Citation Location"
    MakeEci2MTCR = "BMW"
    ModeEci2MTCRl = "1 Series"
    StyleEci2MTCR = "Sports Utility Veh"
    ColorEci2MTCR = "Blue"
    PaymentMethodMTCR = "No Charge"
    DrawerDropDownMTCR = "Auto Cash 194"
    amountRiMTCR = "100"
    PaymentMethodRiMTCR = "Check"
    CashDrawerDescription3MTCR = "desc flex12"
    StateMTCR = "ALABAMA"

    PlateTypeMTCR = "NA"
    Type2MTCR = "DESC Z702"

    # ---------------------------------------TEST------------------------------------------------------------------------



    Value = "_2"

    # WI  # 49024 - Run Batch Updater Task (CitationUID)

    DropdownValueCC = "Customer Classification"
    CodeCC = "DcCC_S2"
    DescriptionCC = "Description for DcCC_S2"

    DropdownValueCSC = "Customer Subclassification"
    CodeCSC = "DcCC_S2"
    DescriptionCSC = "Description for DcCC_S2"

    FirstNameRBT = "Sherlock_S2"
    LastNameRBT = "Holmes"

    DropdownValueVRT = "Vehicle Relationship Type"
    CodeVRT = "DscVR_S2"
    DescriptionVRT = "Description for DscVR_S2"

    StateRBT = "INDIANA"
    PlateTypeRBT = "NA"
    LicensePlateRBT1 = "202_S2"
    LicensePlateRBT2 = "203_S2"
    TableRBT = "abc"
    VehicleMakeRBT = "BMW"
    VehicleModelRBT = "3 Series"
    VehicleStyleRBT = "Four Door"
    ColorRBT = "Black"
    TypeRBT = "Mailing"
    PrimaryStreetRBT = "12345 Blue Street"
    CityRBT = "Indianapolis"
    StateRBT = "COLORADO "
    PostalCodeRBT = "123456"
    CitationNumberRBT1 = "BU01_S2"
    CitationNumberRBT2 = "BU02_S2"
    ViolationCodeRBT = "DESC QA102"
    LocationRBT = "Citation Location 1"
    LicensePlateRBT = "107_S2"
    PlateTypeRBT = "NA"
    QueryNameRBT = "2159"
    QueryDescriptionRBT = "Query Description OF CITE QS4"
    PermitLimitCSC = "1000"
    TaskTypeRBT = "Batch Updater"
    TimePeriodRBT = "One time"
    TypeDR = "abc"
    Selectfield = "Comment Private"
    CommentPrivateRBT = "Test"

    # WI #48827 -  Logout -Login Cash Drawer


    CodeGLALLCD = "GLALCD_2"
    DescriptionGLALLCD = "DescriptionGLALCD_2"
    CodeCDLLCD = "CDLCD_2"
    DescriptionCDLLCD = "DescriptionCDLCD_2"
    DescriptionMiscLLCD = "Sale Item_2"

    DropdownValueGLALLCD = "General Ledger Account"
    DropdownValueCDLLCD = "Cash Drawer"
    AmountMiscLLCD = "10.00"
    MiscCategoryLLCD = "Sale Item"

    PaymentMethodLLCD = "Cash"
    ReferenceLLCD = "Misc. Sale Item"

    # WI #48827 -  Send on the fly emails

    CodeCCSFM = "CSFM_3"
    DescriptionCCSFM = "DescriptionCCSFM_3"
    CodeCSSFM = "CSLFP_3"
    DescriptionCSSFM = "DescriptionCSSFM_3"
    FirstNameSFM = "MadhaviSFM_3"

    DropdownValueCCSFM = "Customer Classification"
    DropdownValueCSSFM = "Customer Subclassification"
    PermitLimitSFM = "1000"
    LastNameSFM = "test"

    SMTPServerSFM = "mail.t2systems.com"
    SMTPPortSFM = "25"
    EmailAddressSFM = "jbeckner@t2systems.com"
    ToSFM = "jbeckner@t2systems.com"
    SubjectSFM = "Test"
    BodySFM = "This is a Test mail"
