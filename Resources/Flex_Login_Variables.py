""""   Class to get the Variable & Xpath for the Test cases  """""

import datetime
import time
class Flex_Login_Variables():

    "Variables defined for the T2 application"
    #HOMEPAGE = "http://uwmad.t2qa.com/uwmadqa1/powerpark"
    HOMEPAGE = "https://automation.t2qa.com/AUTOQA1/PowerPark"
    #HOMEPAGE = "https://automation.t2qa.com/AUTOQA1/PowerPark/entity/view.aspx?id=2504&addtoqueue=1"

    BROWSER ="Chrome"

    #UserID ="LewisM"
    UserID = "FLEXADMIN"
    password ="ame3m"
    random = time.strftime("%H%M%S")
    date = time.strftime("%#m/%d/%Y")





#----------------------------------------Appeals------------------------------------------------------------

# WI #48868 - Tasks: Create Appeals Directly from CV

    CodeCAD = "A1"+random
    DescriptionCAD = "DescriptionCa1" + random
    CodeAwf1CAD = "Ca2" + random
    CodeAwf2CAD = "Ca3" + random
    CodeAwf3CAD = "Ca4" + random
    LongDescriptionCAD = "LongDescriptionCa1" + random
    DescriptionAppealWorkFlow1CAD = "DescriptionCa2" + random
    DescriptionAppealWorkFlow2CAD = "DescriptionCa3" + random
    DescriptionAppealWorkFlow3CAD = "DescriptionCa4" + random
    LicensePlateCAD2 = "Ca5" + random
    LicensePlateCAD1 = "Ca6" + random
    CitationNumberCAD = "Ca7" + random
    FirstNameCAD = "ABHISHEK" + random

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

    CitationCodeAARCV = "CD" + random
    CitationDescriptionAARCV = "DescriptionCVAARW" + random
    CodeAARCL = "CD" + random
    DescriptionAARCL = "DescriptionCLAARW" + random
    CodeAARDL = "DL" + random
    DescriptionAARDL = "DescriptionDLAARW" + random
    CodeAARDT = "DT" + random
    DescriptionAARDT = "DescriptionDTAARW" + random
    CodeAARAWS1 = "AR" + random
    DescriptionAARAWS1 = "DescriptionARSW1" + random
    CodeAARAWS2 = "AR" + random
    DescriptionAARAWS2 = "DescriptionARSW2" + random
    CodeAARAWS3 = "AR" + random
    DescriptionAARAWS3 = "DescriptionARSW3" + random
    CodeAT="AT" + random
    DescriptionAT="DescriptionATAAR" + random
    CodeAAANC="AA" + random
    DescriptionAAANC="DescriptionAAANC" + random
    CodeATC = "AA" + random
    DescriptionATC = "DescriptionAARATC" + random
    CodeVRTAAR = "AA" + random
    DescriptionVRTAAR = "DescriptionAARVRT" + random
    FirstNameAAR = "MadhaviAR" + random
    LicensePlateAAR = "123" + random
    CitationNumberAAR = "AARCN" + random


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


    UseforATC="Citation"
    PrefixATC="APPEAL_"
    FilterATC="Description"
    LastNameAAR = "test"
    ClassificationAAR = "Employee"
    SubclassificationAAR = "Physical Plant"
    StateAAR = "COLORADO"
    PlateTypeAAR = "NA"

    VehicleMakeAAR = "Ford"
    VehicleModelAAR = "Bronco"
    YearAAR="2005"
    VehicleStyleAAR = "Four Door"
    VehicleColorAAR = "Black"
    TypeAAR = "Mailing"
    PrimaryStreetAAR = "12345 Blue Street"
    CityAAR = "Indianapolis"
    StateAARA = "INDIANA"
    CitationAppealResultAAR="Fine Reduced"
    JudgmentDecisionDescriptionAAR="Void Ticket"


# ----------------------------------------Citations-----------------------------------------------------------


    # InsertCitationTestCase

    DropdownValue = "Citation Violation Code"
    CitationCode = "TC" + random
    CitationDescription = "CitationDescription" + random
    BaseAmount = "20"
    GlAccount = "MISCELLANEOUS"
    LongDescription = "LongDescription" + random
    CitationNumber = "TC" + random
    ViolationCode = "Double Parked"
    Location = "Citation Location 1"
    State = "ARIZONA"
    LicensePlate = "TLP00" + random
    PlateType = "Passenger"
    Make = "Audi"
    Model = "A8"
    Style = "Hatchback"
    Color = "Burgundy"

    # WI #48868 - Tasks: Pay Citations

    CVCodePC = "TC" + random
    CVDescriptionPC = "DescriptionPC"+random
    CLCodePC = "TC" + random
    CLDescriptionPC = "Citation LocationPC1"+random
    FirstNamePC = "Md" + random
    VRTCodePC = "VT" + random
    VRTDescriptionPC = "DescriptionVRT" + random
    LicensePlatePC = "23" + random
    CitationNumberPC = "PC" + random
    CitationNumberPC1 = "PC2" + random
    CashDrawerCodePC = "Cd" + random
    CashDrawerDescriptionPC = "DescriptionCd" + random
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

    FirstNameCNL = "D" + random
    LastNameCNL = "Wanner"
    ClassificationCNL = "Student"
    SubclassificationCNL = "On Campus"
    DropdownValueCNL = "Vehicle Relationship Type"
    CodeCNL = "CL" + random
    DescriptionCNL = "Des CNL" + random
    StateCNL = "COLORADO "
    LicensePlateCNL = "883" + random
    PlateTypeCNL = "NA"
    VehicleMakeCNL = "Ford"
    VehicleModelCNL = "Bronco"
    VehicleStyleCNL = "Hatchback"
    VehicleColorCNL = "Burgundy"
    Facilities = "Facility A"
    TypeCNL = "Mailing"
    PrimaryStreetCNL = "123West Street"
    CityCNL = "Indianapolis"
    CitationNumberCNL = "CNL" + random
    TaskNameCNL = "Automated" + random
    ScheduleDescriptionCNL = "Automated" + random
    TaskTypeCNL = "Citation Notice Letters"
    TimePeriodCNL = "One time"
    SearchTypeCNL = "Whenever Requested"

    CustomerSubclassification = ClassificationCNL + ": " + SubclassificationCNL

    # WI #48815 - Pay for Citation Fee Using Account Payment Method

    FirstNameAPM = "JM" + random
    LastNameAPM = "Watson"
    ClassificationAPM = "Student"
    SubclassificationAPM = "On Campus"
    LookUpTableAPM = "Vehicle Relationship Type"
    CodeAPM = "AP" + random
    DescriptionAPM = "DESCRIPT" + random
    CodeAPM2 = "CD" + random
    DescriptionAPM2 = "DESCR" + random
    LicensePlateAPM = "53"+random
    StateAPM = "COLORADO "
    PlateTypeAPM = "NA"
    VehicleMakeAPM = "Ford"
    VehicleModelAPM = "Bronco"
    YearAPM = "2005"
    TypeAPM = "Mailing"
    PrimaryStreetAPM = "XXX Street"
    DropdownValueAPM = "Vehicle Relationship Type"
    DropdownValueAPM2 = "Cash Drawer"
    CityAPM = "Indianapolis"
    PostalCodeAPM = "123456"
    CitationNumberAPM = "507" + random
    ViolationCodeAPM = "ABP"
    LocationAPM = "Citation Location 1"
    StyleAPM = "Four Door"
    ColorAPM = "Black"
    amountAPM = 100
    PaymentMethodAPM = "Cash"

    # WI  # 48827 -  Citation Late Fee Processing
    CodeCCCLFP = "FP" + random
    DescriptionCCCLFP = "Descript" + random
    CodeCSCLFP = "FS" + random
    DescriptionCSCLFP = "Description" + random
    CodeVRTCLFP = "FR" + random
    DescriptionVRTCLFP = "Description" + random
    LicensePlateCLFP = "101" + random
    CitationNumberCLFP1 = "CL1" + random
    CitationNumberCLFP2 = "CL2" + random
    CodeGLACLFP = "GL" + random
    DescriptionGLACLFP = "DescriptionLFP" + random
    FirstNameCLFP = "MD" + random

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
    CitationFeeCLFP = ""
    NumberofdaysbetweenFeesCLFP = "10"
    MaximumFeeCountCLFP = "3"

    # WI #49180 - Task Citations: Multi-Citation Notice Letters


    DropdownValueMNP = "Customer Classification"
    CodeMNLC = "NC" + random
    DescriptionMNLC = "Description" + random

    DropdownValueMNP1 = "Customer Subclassification"
    CodeMNPS = "NS" + random
    DescriptionMNLS = "Description" + random

    PermitLimitMNPS = 1000

    FirstNameMNP = "NL" + random
    LastNameMNP = "sagar"

    DropdownValueMNP2 = "Vehicle Relationship Type"

    TypeMNP1 = "Mailing"
    CodeMNP1 = "VR" + random
    DescriptionMNP1 = "Description" + random
    PlateTypeMNP = "NA"
    StateMNP = "COLORADO "
    CityMNP = "Indianapolis"
    PrimaryStreetMNP = "12345 West Street"
    VehicleMakeMNP = "Ford"
    LicensePlateMNP = "800" + random
    VehicleModelMNP = "Bronco"
    VehicleStyleMNP = "Hatchback"
    VehicleColorMNP = "Black"
    DescriptionMNP = "Owner"
    CitationNumberMNP1 = "JB" + random
    ViolationCodeMNP1 = "Double Parked"
    LocationMNP1 = "Citation Location 1"
    CitationNumberMNP2 = "JC" + random
    ViolationCodeMNP2 = "Double Parked"
    LocationMNP2 = "Citation Location 2"
    CitationNumberMNP3 = "JD" + random
    ViolationCodeMNP3 = "Double Parked"
    LocationMNP3 = "Citation Location 3"
    TaskNameMNP = "Automated Multi Citation Notice Letters"
    ScheduleDescriptionMNP = "Multi-Citation Notice Letters"
    TaskTypeMNP = "Multi-Citation Notice Letters"
    TimePeriodMNP = "One time"
    SearchTypeMNP = "Whenever Requested"
    CustomerSubclassificationMNP = DescriptionMNLC + ": " + DescriptionMNLS
    CitationStatusMNP = "Unpaid"
    AddressTypeMNP = "Mailing"
    LetterTemplateMNP = "Multi-Citation Batch Letter"

    # ----------------------------------------Events------------------------------------------------------------

# WI #48811 - Events: Create an Event Including Contacts and All Resource Types

    FirstNameCEIC = "Harry" + random
    LastNameCEIC = "POTTER"
    ClassificationCEIC = "Student"
    SubclassificationCEIC = "Off Campus"
    DropdownSelectCEICGLC = "General Ledger Account"
    codeCEICGLC = "GL" + random
    DescriptionCEICGLC = "GLS DES" + random
    DropdownSelectCEICEG = "Event Group"
    codeCEICEG = "ES" + random
    DescriptionCEICEG = "EGS DES" + random
    DropdownSelectCEICECT = "Event Contact Type"
    codeCEICECT = "EC" + random
    DescriptionCEICECT = "ECT DES" + random
    ContactStyleCEICECT = "Other Contact"
    DropdownSelectCEICECL = "Event Classification"
    codeCEICECL = "EL" + random
    DescriptionCEICECL = "ECL DES" + random
    DropdownSelectCEICECR = "Event Resource"
    codeCEICECR = "AR" + random
    DescriptionCEICECR = "ACR DES" + random
    QuantityCEICECR = "10"
    CoastCEICECR = "10"
    PriceCEICECR = "20"
    ResourceCategoryCEIC = "Equipment Resource"
    DropdownSelectECRSF = "Event Resource"
    codeCEICECRSF = "AS" + random
    DescriptionCEICECRSF = "Airector DESSF" + random
    QuantityCEICECRSF = "10"
    CoastCEICECRSF = "10"
    PriceCEICECRSF = "50"
    ResourceCategoryCEICSF = "Staff Resource"
    EventTitleCEICEIE = "RandomizedX" + random
    EventClassificationCEICEIE = "RAnDom Data" + random
    StartDateCEICEIE = date
    StartTimeCEICEIE = "1:"
    MECEICEIE1 = "AM"
    EndDateCEICEIE = date
    EndTimeCEICEIE = "3:"
    EventContactTypeCEICIER = "Billable Contact"
    NoteTypeCEI = "Other"
    NoteTextCEICIER = "Note Text" + random

    # ----------------------------------------Financial------------------------------------------------------------

# Apply/Adjust Fees

    FirstNameAF = "Mike" + random
    LastNameAF = "Test"
    ClassificationAF = "Student"
    SubclassificationAF = "Off Campus"
    SelectFeeAF = "NSF Fee"
    AdjustmentAF = -10
    ReasonAF = "Fee Adjustment"
    BalanceDue = None

# WI #48813 - Pay for Misc. Sale Item in Basket using Cash Payment Method

    CodeGLA = "PM" + random
    DescriptionGLA = "DescriptionPMSGLA" + random
    CodePMCD = "PM" + random
    DescriptionPMCD = "DescriptionPMSCD" + random
    DescriptionMisc = "MiscDescription" + random

    DropdownValueGLA = "General Ledger Account"
    DropdownValueCD = "Cash Drawer"
    DropdownValueMisc = " Misc. Sale Items/Fees "
    AmountMisc = "10"
    MiscCategory = "Sale Item"
    GlAccountMisc = "MISCELLANEOUS"
    PaymentMethodMisc = "Cash"
    ReferenceMisc = "Cash payment"

    # WI #48866 - PAD-Export  task

    CodeCCET = "CCET" + random
    DescriptionCCET = "DescriptionCCET" + random
    CodeCSET = "CSET" + random
    DescriptionCSET = "DescriptionCSET" + random
    CodeTAET = "TAET" + random
    DescriptionTAET = "DescriptionTAET" + random
    CodePMET = "PMET" + random
    DescriptionPMET = "DescriptionPMET" + random
    CodeCDET = "CDET" + random
    DescriptionCDET = "DescriptionCDET" + random
    SerieETrefixET = "ET" + random
    FirstNameET = "MadhaviET" + random

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
    SeriesCharWidthET = 11
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

    # ----------------------------------------Permits------------------------------------------------------------

# WI #48868 - Tasks: Permit Auto-Renewals


    CashDrawerCodePAR = "P1"+random
    CashDrawerDescriptionPAR = "DescriptionP1"+random
    SeriesPrefixPAR = "PA"+random
    FirstNamePAR = "MadhaviP"+random

    SeriesTypePAR = "Inventoried"
    PermitTypePAR = "Access Hangtag"
    SeriesStartPAR = "111"
    SeriesEndPAR = "120"
    SeriesCharWidthPAR = 11
    DescriptionPAR = "Automated Access Permits"

    NamePAR = "Auto Access Permits Control Group"
    DefPerGLAccountPAR = "MISCELLANEOUS"
    RefundGLAccountPAR = "MISCELLANEOUS"
    ExpirationDateDaysPAR=5
    AvailableForSaleDatePAR = "1/1/2017"
    AvailableEndDatePAR = "1/1/2018"
    RateAmountPAR = 100
    FacilitiesPAR = "Facility A"

    PermitAllacoationPAR = SeriesPrefixPAR + SeriesStartPAR + " through " + SeriesPrefixPAR + SeriesEndPAR
    PermitStartPAR = SeriesPrefixPAR + SeriesStartPAR
    PermitEndPAR = SeriesPrefixPAR + SeriesEndPAR
    PermitNumberPAR = SeriesPrefixPAR + SeriesStartPAR
    DrawerPAR = "Auto Cash 188"

    LastNamePAR = "Latha"
    ClassificationPAR = "Student"
    SubclassificationPAR = "On Campus"

    RenewalDescriptionPAR = "Renewal Schedule"
    ExpirationDateUponPAR = "Full Payment"
    RenewalTypePAR = "Extend Expiration Date"
    TermTypePAR = "Day"
    TermLengthPAR = 30
    TotalFeeAmountPAR = 50
    RenewalPeriodStartsPAR = 10
    GracePeriodPAR = 10

    CashDrawerSelect = "Cash Drawer"
    PaymentMethodPAR = "Cash"
    ReferencePAR="Permit AutoRenewals"
    TaskNamePAR = "Automated Permit Renewal"
    ScheduleDescriptionPAR = "Automated Permit Renewal"
    TaskTypePAR = "Permit Auto-Renewals"
    TimePeriodPAR = "One time"
    CustomerSubclassificationPAR = ClassificationPAR+": "+SubclassificationPAR

    # WI #48868 - Tasks: Permit Renewal Task


    CashDrawerCodePRT = "CD" + random
    CashDrawerDescriptionPRT = "DescriptionCDPRT" + random
    SeriesPrefixPRT = "PR" + random
    FirstNamePRT = "MadhaviPRT" + random

    SeriesTypePRT = "Inventoried"
    PermitTypePRT = "Access Hangtag"
    SeriesStartPRT = "111"
    SeriesEndPRT = "120"
    SeriesCharWidthPRT = 11
    DescriptionPRT = "Automated Access Permits"

    NamePRT = "Auto Access Permits Control Group"
    DefPerGLAccountPRT = "MISCELLANEOUS"
    RefundGLAccountPRT = "MISCELLANEOUS"
    ExpirationDateDaysPRT = 5
    AvailableForSaleDatePRT = "1/1/2017"
    AvailableEndDatePRT = "1/1/2018"
    RateAmountPRT = 100
    FacilitiesPRT = "Facility A"

    PermitAllacoationPRT = SeriesPrefixPRT + SeriesStartPRT + " through " + SeriesPrefixPRT + SeriesEndPRT
    PermitStartPRT = SeriesPrefixPRT + SeriesStartPRT
    PermitEndPRT = SeriesPrefixPRT + SeriesEndPRT
    PermitNumberPRT = SeriesPrefixPRT + SeriesStartPRT
    DrawerPRT = "Auto Cash 188"

    LastNamePRT = "Latha"
    ClassificationPRT = "Student"
    SubclassificationPRT = "On Campus"

    RenewalDescriptionPRT = "Renewal Schedule" + random
    ExpirationDateUponPRT = "Full Payment"
    RenewalTypePRT = "Extend Expiration Date"
    TermTypePRT = "Day"
    TermLengthPRT = 30
    TotalFeeAmountPRT = 50
    RenewalPeriodStartsPRT = 10
    GracePeriodPRT = 10

    CashDrawerSelectPRT = "Cash Drawer"
    PaymentMethodPRT = "Cash"
    ReferencePRT = "Permit AutoRenewals"
    TaskNamePRT = "Automated Permit Renewal"
    ScheduleDescriptionPRT = "Automated Permit Renewal"
    TaskTypePRT = "Permit Auto-Renewals"
    TimePeriodPRT = "One time"
    CustomerSubclassificationPRT = ClassificationPRT + ": " + SubclassificationPRT




# Allocate Permits to Cash Drawers

    SeriesPrefixCD = "CD"+random

    SeriesStartCD = "111"
    SeriesEndCD = "120"
    SeriesTypeCD = "Inventoried"
    PermitTypeCD = "Value Credential"
    SeriesCharWidthCD = "11"
    DescriptionCD = "Automated Credentials"
    FacilitiesCD = "Facility A"
    NameCD = "Auto Credentials Control Group"
    DefPerGLAccountCD = "MISCELLANEOUS"
    RefundGLAccountCD = "MISCELLANEOUS"
    ValuePermissionTypeCD = "MISCELLANEOUS"
    EffectiveDate = "1/1/2017"
    ExpirationDate = "1/1/2018"
    AvailableForSaleDate = "1/1/2017"
    AvailableEndDate = "1/1/2018"
    PerUseFeeCD = 5

    PermitAllacoationCD = SeriesPrefixCD + SeriesStartCD + " through " + SeriesPrefixCD + SeriesEndCD
    PermitStartCD = SeriesPrefixCD + SeriesStartCD
    PermitEndCD = SeriesPrefixCD + SeriesEndCD
    PermitNumberCD = SeriesPrefixCD + SeriesStartCD


# Sell a Value Credential permit

    SeriesPrefixVC = "VC"+random
    FirstNameVC = "James"+random

    SeriesStartVC = "111"
    SeriesEndVC = "120"
    SeriesTypeVC = "Inventoried"
    PermitTypeVC = "Value Credential"

    SeriesCharWidthVC = "11"
    DescriptionVC = "Automated Value Credentials"
    RefundGLAccount = "MISCELLANEOUS"
    NameVC = "Auto Value Credentials Control Group"
    DefPerGLAccountVC = "MISCELLANEOUS"
    RefundGLAccountVC = "MISCELLANEOUS"
    ValuePermissionType = "Uses"
    DefaultValue = 3
    FacilitiesVC = "Facility A"
    RateAmountVC = 5
    LastNameVC = "Test"
    ClassificationVC = "Student"
    SubclassificationVC = "On Campus"
    PermitAllacoationVC = SeriesPrefixVC + SeriesStartVC + " through " + SeriesPrefixVC + SeriesEndVC
    PermitStartVC = SeriesPrefixVC + SeriesStartVC
    PermitEndVC = SeriesPrefixVC + SeriesEndVC
    PermitNumberVC = SeriesPrefixVC + SeriesStartVC
    DrawerVC = "Citation Office 1"
    PaymentMethodVC = "Cash"

#Pay for Permit-Third

    SeriesPrefixTP = "TP" + random
    FirstNameTP = "Jim" + random
    ThirdPartyNameTP = "Third Party AP" + random

    SeriesStartTP = "111"
    SeriesEndTP = "120"
    CGRangeIDTP = "3887"
    SeriesTypeTP = "Inventoried"
    PermitTypeTP = "Access Hangtag"
    SeriesCharWidthTP = "11"
    DescriptionTP = "Automated Access Permits"
    NameTP = "Auto Access Permits Control Group"
    DefPerGLAccountTP = "MISCELLANEOUS"
    RefundGLAccountTP = "MISCELLANEOUS"
    FacilitiesTP = "Facility A"
    RateAmountTP = 100

    PermitAllacoationTP = SeriesPrefixTP + SeriesStartTP + " through " + SeriesPrefixTP + SeriesEndTP
    PermitStartTP = SeriesPrefixTP + SeriesStartTP
    PermitEndTP = SeriesPrefixTP + SeriesEndTP
    PermitNumberTP = SeriesPrefixTP + SeriesStartTP
    DrawerTP = "LOYALTY"
    LastNameTP = "PFPTP"
    ClassificationTP = "Student"
    SubclassificationTP = "On Campus"
    FilterTP = "Payment Method"
    DescriptionTPPEM = "Third Party"
    ThirdPartyContactNameTP = "Third Party Contact Name"
    LookUpTable = "Cash Drawer"
    PaymentMethodTP = "Third Party"

    # WI #48840 - Vehicles: Link Vehicles to Customer and Permit
    SeriesPrefixLV = "LV" + random
    FirstNameLV = "Andrew" + random
    LicensePlateLV = "LVLP" + random
    ThirdPartyNameVL = "Third Party" + random

    SeriesStartLV = "111"
    SeriesEndLV = "120"
    SeriesTypeLV = "Inventoried"
    PermitTypeLV = "Access Hangtag"
    SeriesCharWidthLV = 11
    DescriptionLV = "Automated Access Permits"
    NameLV = "Auto Access Permits Control Group"
    DefPerGLAccountLV = "MISCELLANEOUS"
    RefundGLAccountLV = "MISCELLANEOUS"
    RateAmountLV = 100

    PermitAllacoationLV = SeriesPrefixLV + SeriesStartLV + " through " + SeriesPrefixLV + SeriesEndLV
    PermitStartLV = SeriesPrefixLV + SeriesStartLV
    PermitEndLV = SeriesPrefixLV + SeriesEndLV
    PermitNumberLV = SeriesPrefixLV + SeriesStartLV
    DrawerLV = "LOYALTY"
    LastNameLV = "Flintop"
    ClassificationLV = "Student"
    SubclassificationLV = "On Campus"
    FilterLV = "Payment Method"
    DescriptionLVPEM = "Third Party"
    ThirdPartyContactNameVL = "Third Party Contact Name"
    PaymentMethodLV = "Third Party"

    StateVehicleVL = "COLORADO"
    PlateTypeVL = "NA"
    VehicleMakeVL = "Ford"
    VehicleModelVL = "Bronco"
    YearVL = "2005"
    TypeVL = "Owner"


# WI #49168 - Tasks:  Change the Price of a Permit

    CashDrawerCodeCPP = "CD" + random
    CashDrawerDescriptionCPP = "DescriptionCD" + random
    FirstNameCPP = "MadhaviR" + random
    UserNameCPP = "MadhaviM" + random
    NickNameCPP = "Madhuu" + random
    SeriesPrefixCPP = "CP" + random

    SeriesTypeCPP = "Inventoried"
    PermitTypeCPP = "Access Hangtag"
    SeriesStartCPP = "111"
    SeriesEndCPP = "120"
    SeriesCharWidthCPP = "11"
    DescriptionCPP = "Automated Access Permits"

    NameCPP = "Auto Access Permits Control Group"
    DefPerGLAccountCPP = "MISCELLANEOUS"
    RefundGLAccountCPP = "MISCELLANEOUS"
    DaysCPP = 5
    SaleFeeCPP = 100
    FacilitiesCPP = "Fac 5"

    PermitAllacoationCPP = SeriesPrefixCPP + SeriesStartCPP + " through " + SeriesPrefixCPP + SeriesEndCPP
    PermitStartCPP = SeriesPrefixCPP + SeriesStartCPP
    PermitEndCPP = SeriesPrefixCPP + SeriesEndCPP
    PermitNumberCPP = SeriesPrefixCPP + SeriesStartCPP
    DrawerCPP = "LOYALTY"

    LastNameCPP = "Latha"
    ClassificationCPP = "Student"
    SubclassificationCPP = "On Campus"
    PaymentMethodCPP = "Cash"

    RenewalDescriptionCPP = "Renewal Schedule 1"
    ExpirationDateUponCPP = "Full Payment"
    RenewalTypeCPP = "Extend Expiration Date"
    TermTypeCPP = "Day"
    TermLengthCPP = 5
    TotalFeeAmountCPP = 50
    RenewalPeriodStartsCPP = 10
    GracePeriodCPP = 10

    TypeCPP = "T2 Flex"
    UserAuthMethodCPP = "T2 Flex"
    PasswordCPP = "Madhavi"
    ConfirmPasswordCPP = "Madhavi"
    UserDescriptionCPP = "MadhaviDescription"

    DollarsCPP = "10.00"
    PercentageCPP = "0.00"
    WaiveAmountCPP = "5.00"
    PermitAmountCPP = "5.00"

    QuantityPaymentAmountCPP = "90"
    ReferenceCPP = "override test"

    # WI #48868 - Tasks: Credit Card Capture Site

    FirstNameCCC = "MadhaviCCC" + random
    SeriesPrefixCCC = "CC" + random

    SeriesStartCCC = "111"
    SeriesEndCCC = "120"
    SeriesTypeCCC = "Inventoried"
    PermitTypeCCC = "Access Hangtag"
    SeriesCharWidthCCC = "11"
    DescriptionCCC = "Automated Access Permits"

    NameCCC = "Auto Access Permits Control Group"
    DefPerGLAccountCCC = "MISCELLANEOUS"
    RefundGLAccountCCC = "MISCELLANEOUS"
    EffectiveDateCCC = "1/1/2017"
    ExpirationDateCCC = "1/1/2018"
    AvailableForSaleDateCCC = "1/1/2017"
    AvailableEndDateCCC = "1/1/2018"
    RateAmountCCC = 100
    FacilitiesCCC = "Fac 5"

    PermitAllacoationCCC = SeriesPrefixCCC + SeriesStartCCC + " through " + SeriesPrefixCCC + SeriesEndCCC
    PermitStartCCC = SeriesPrefixCCC + SeriesStartCCC
    PermitEndCCC = SeriesPrefixCCC + SeriesEndCCC
    PermitNumberCCC = SeriesPrefixCCC + SeriesStartCCC

    LastNameCCC = "Latha"
    ClassificationCCC = "Student"
    SubclassificationCCC = "On Campus"
    PaymentMethodCCC = "Cash"



    # WI #48868 - Tasks: CSP-Fixed Effective Date

    SeriesPrefixFED = "FD"+random
    FirstNameFED = "MadhaviFD"+random

    SeriesTypeFED = "Inventoried"
    PermitTypeFED = "Access Hangtag"
    SeriesStartFED = "111"
    SeriesEndFED = "120"
    SeriesCharWidthFED = "11"
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

    SeriesPrefixCSPCD = "CD"+random
    FirstNameCSPCD = "MadhaviCD"+random

    SeriesTypeCSPCD = "Inventoried"
    PermitTypeCSPCD = "Access Hangtag"
    SeriesStartCSPCD = "111"
    SeriesEndCSPCD = "120"
    SeriesCharWidthCSPCD = "11"
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

    FirstNameCSP = "Satish" + random
    SeriesPrefixCSP = "SP" + random

    DescriptionCSP = "Automated Access Permits"
    SeriesTypeCSP = "Inventoried"
    PermitTypeCSP = "Access Hangtag"
    SeriesPrefixCSPType = "Series Prefix"
    SeriesStartCSP = "111"
    SeriesEndCSP = "120"
    LastNameCSP = "Test"

    MonthCSP = "5"
    SeriesCharWidthCSP = "11"
    LookUpTableCSP = "Cash Drawer"
    NameCSP = "Auto Access Permits Control Group"
    DefPerGLAccountCSP = "MISCELLANEOUS"
    RefundGLAccountCSP = "MISCELLANEOUS"
    RateAmountCSP = "100"
    CashDrawerDescriptionCSP = "Automation Cash Drawer" + random
    PermitAllacoationCSP = SeriesPrefixCSP + SeriesStartCSP + " through " + SeriesPrefixCSP + SeriesEndCSP
    PermitStartCSP = SeriesPrefixCSP + SeriesStartCSP
    PermitEndCSP = SeriesPrefixCSP + SeriesEndCSP
    PermitNumberCSP = SeriesPrefixCSP + SeriesStartCSP
    ClassificationCSP = "Student"
    SubclassificationCSP = "On Campus"
    CashDrawerSelectCSP = "Cash Drawer"
    PaymentMethodCSP = "Cash"
    AvailableForSaleDateCSP = "1/1/2017"
    AvailableEndDateCSP = "1/1/2018"
    EffectiveDateCSP = "9/1/2018"

    # WI #48868 - Tasks: SBP-xMonth

    SeriesPrefixSBPM = "SB" + random
    FirstNameSBPM = "MadhaviSBPM" + random
    CashDrawerCodeSBPM = "XM" + random
    CashDrawerDescriptionSBPM = "DescriptionSBPM" + random

    SeriesStartSBPM = "111"
    SeriesEndSBPM = "120"
    SeriesTypeSBPM = "Inventoried"
    PermitTypeSBPM = "Access Hangtag"
    SeriesCharWidthSBPM = "11"
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

    SeriesPrefixSBPP = "PS" + random
    FirstNameSBPP = "MadhaviSP" + random
    CashDrawerCodeSBPP = "MR" + random
    CashDrawerDescriptionSBPP = "DescriptionSBPP" + random

    SeriesStartSBPP = "111"
    SeriesEndSBPP = "120"
    SeriesTypeSBPP = "Inventoried"
    PermitTypeSBPP = "Access Hangtag"
    SeriesCharWidthSBPP = "11"
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


    SeriesPrefixSBPF = "PF" + random
    FirstNameSBPF = "MadhaviSBPF" + random
    CashDrawerCodeSBPF = "CF" + random
    CashDrawerDescriptionSBPF = "DescriptionSBPF" + random

    SeriesStartSBPF = "111"
    SeriesEndSBPF = "120"
    SeriesTypeSBPF = "Inventoried"
    PermitTypeSBPF = "Access Hangtag"
    SeriesCharWidthSBPF = "11"
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

    SeriesPrefixCIP = "IP"+random
    FirstNameCIP = "MadhaviCIP"+random
    CodeCDCIP = "CI"+random
    DescriptionCDCIP = "DescriptionCDCIP"+random

    SeriesTypeCIP = "Inventoried"
    PermitTypeCIP = "Access Hangtag"
    SeriesStartCIP = "111"
    SeriesEndCIP = "120"
    SeriesCharWidthCIP = 11
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

    FirstNameRFP = "Bikram" + random
    CodeRFP1 = "RF" + random
    DescriptionRFP1 = "DescriptionRF" + random
    SeriesPrefixRFP = "TK" + random

    SeriesStartRFP = "111"
    SeriesEndRFP = "120"
    NameRFP = "Auto Access Permits Control Group"
    LastNameRFP = "Kumar"

    SeriesTypeRFP = "Inventoried"
    PermitTypeRFP = "Access Hangtag"
    SeriesCharWidthRFP = 11
    DescriptionRFP = "Automated Access Permits" + random
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

    CashDrawerCodeRP = "RP" + random
    CashDrawerDescriptionRP = "DescriptionRP" + random
    FirstNameRP = "MadhaviRP" + random
    SeriesPrefixRP = "SR" + random

    SeriesStartRP = "121"
    SeriesEndRP = "130"
    SeriesTypeRP = "Inventoried"
    PermitTypeRP = "Access Hangtag"
    SeriesCharWidthRP = "11"
    DescriptionRP = "Automated Access Permits"

    NameRP = "Auto Access Permits Control Group"
    DefPerGLAccountRP = "MISCELLANEOUS"
    RefundGLAccountRP = "MISCELLANEOUS"
    EffectiveDateRP = "1/1/2017"
    ExpirationDateRP = "1/1/2018"
    RateAmountRP = 100
    FacilitiesRP = "Fac 5"
    RefundScheduleRP = "10"

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

    CodeCCSP = "CCSP" + random
    DescriptionCCSP = "DescriptionCCSP" + random
    CodeCSSP = "CSSP" + random
    DescriptionCSSP = "DescriptionCSSP" + random
    CodeTASP = "TASP" + random
    DescriptionTASP = "DescriptionTASP" + random
    CodePMSP = "PMSP" + random
    DescriptionPMSP = "DescriptionPMSP" + random
    CodeCDSP = "CDSP" + random
    DescriptionCDSP = "DescriptionCDSP" + random
    SeriesPrefixSP = "SP" + random
    FirstNameSP = "MadhaviSP" + random

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
    SeriesCharWidthSP = 11
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


    # WI #48866 - PAD-Renewing permits

    CodeCCRPD = "CCRPD" + random
    DescriptionCCRPD = "DescriptionCCRPD" + random
    CodeCSRPD = "CSRPD" + random
    DescriptionCSRPD = "DescriptionCSRPD" + random
    CodRPDARPD = "TARPD" + random
    DescriptionTARPD = "DescriptionTARPD" + random
    CodePMRPD = "PMRPD" + random
    DescriptionPMRPD = "DescriptionPMRPD" + random
    CodeCDRPD = "CDRPD" + random
    DescriptionCDRPD = "DescriptionCDRPD" + random
    SerieRPDrefixRPD = "RD" + random
    FirstNameRPD = "MadhaviRPD" + random

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
    SeriesCharWidthRPD = 11
    DescriptionRPD = "Automated Access Permits"

    NameRPD = "Auto Access Permits Control Group"
    DefPerGLAccountRPD = "MISCELLANEOUS"
    RefundGLAccountRPD = "MISCELLANEOUS"
    ExpirationDateRPD = "5"
    AvailableForSaleDateRPD = "1/1/2017"
    AvailableEndDateRPD = "1/1/2018"
    SaleFeeRPD = "100"
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


# WI #48950 - Verify effective-expiration dates on Step 1 of the Sell Permit wizard

    CodeCCED = "CC" + random
    DescriptionCCED = "DescriptionCCAR" + random
    CodeCSED = "CS" + random
    DescriptionCSED = "DescriptionCSAR" + random
    SeriesPrefixED = "VD" + random
    NameED2 = "Current-13days"
    NameED3 = "pos-7months"
    NameED4 = "fixed-pos1"
    NameED5 = "fixed-fixed1"
    NameED6 = "current-pos1"
    NameED7 = "pos-pos1"
    PermitAllacoationED = "VED_12210 through VED_12219"
    PermitStartED = "VED_12210"
    PermitEndED = "VED_12219"
    FirstNameED = "Mukesh"
    LastNameED = "Nair"
    CashDrawerCodeED = "Auto219"
    CashDrawerDescriptionED = "Automation Cash Drawer219"

    DropdownValueCCED = "Customer Classification"
    DropdownValueCSED = "Customer Subclassification"
    PermitLimitED1 = 1000
    SeriesTypeED = "Inventoried"
    PermitTypeED = "Access Hangtag"
    SeriesStartED = "210"
    SeriesEndED = "219"
    SeriesCharWidthED = 11
    DescriptionED = "Automated Access Permits"
    DefPerGLAccountED = "MISCELLANEOUS"
    RefundGLAccountED = "MISCELLANEOUS"
    ExpirationDateED = 5
    AvailableForSaleDateED = "1/1/2017"
    AvailableEndDateED = "1/1/2018"
    FacilitiesED = "Fac 1"
    RateAmountED = 100
    CustomerSubclassificationsED = DescriptionCCED + " - " + DescriptionCSED
    PastEffectiveDateED = 9
    SaleFeeED = 30
    EffectiveDateED = "5/1/2017"
    ExpirationDateED1 = "5/1/2018"
    SaleFeeED1 = 1
    CashDrawerSelectED = "Cash Drawer"
    PermitNumberED = "VED_12214"
    PaymentMethodED = "Cash"

# Sell multiple Permits and MSI

    CodeEPP = "EP" + random
    DescriptionEPP = "DescEP" + random
    GLACodeEEP = "GL" + random
    GLADescriptionEEP = "DescGL" + random
    DescriptionEEP1 = "Sale Item" + random
    CodeEEP2 = "EQ" + random
    DescriptionEEP2 = "DescEPQ" + random
    CodeEEP3 = "PT" + random

    DropdownValueEEP = "Customer Classification"
    DropdownValueEEP1 = "General Ledger Account"
    DropdownValueEEP2 = "Customer Subclassification"
    DropdownValueEEP3 = "Payment Schedule Template"
    MiscCategoryEEP1 = "Sale Item"
    AmountEEP1 = 10
    PermitLimitEEP2 = 1000
    DescriptionEEP3 = "DescPST" + random
    PaymentPlanTimePeriodEEP3 = "Weekly"
    NumberofPaymentsEEP3 = 8

    DropdownValueEEP4 = "Transfer Agency"
    CodeEEP4 = "TA" + random
    DescriptionEEP4 = "TA" + random
    DaysToProcess = 7
    PaymentPlanScheduleDate = "06/12/2107"
    PaymentPlanPeriod = "Monthly"
    AvailablePaymentScheduleTemplates = "PST3"
    AvailableCustomerSubclassifications = DescriptionEPP + " - " + DescriptionEEP2

    DropdownValueEEP5 = "Payment Method"
    PaymentTypeEEP5 = "External Payment Plan"
    CodeEEP5 = "EP" + random
    DescriptionEEP5 = "EPP" + random

    FilterEEP = "FinancialType"
    PaymentMethodEEP = "Permission"
    FinancialTypeEEP = "EPP" + random

    FilterEEP4 = "Payment Method"
    PaymentMethodEEP4 = "EP" + random

    SeriesTypeEEP = "Inventoried"
    PermitTypeEEP = "Access Hangtag"
    SeriesPrefixEEP = "EA" + random
    SeriesStartEEP = "110"
    SeriesEndEEP = "119"
    SeriesCharWidthEEP = 11
    DescriptionEEP = "Automation Access Permits1"

    NameEEP = "Automation Access Permits1"
    DefPerGLAccountEEP = "MISCELLANEOUS"

    ExpirationDateEEP = "5"
    AvailableForSaleDateEEP = "1/1/2017"
    AvailableEndDateEEP = "1/1/2018"
    RefundGLAccountEEP = "EPP - EEP1"
    FacilitiesEEP = "Fac 1"
    RateAmountEEP = 100

    RenewalDescriptionEEP = "Renewal Schedule 1"
    ExpirationDateUponEEP = "Full Payment"
    RenewalTypeEEP = "Extend Expiration Date"
    TermTypeEEP = "Day"
    TermLengthEEP = 30
    TotalFeeAmountEEP = 50
    RenewalPeriodStartsEEP = 10
    GracePeriodEEP = 10

    PermitAllacoationEEP = SeriesPrefixEEP + SeriesStartEEP + " through " + SeriesPrefixEEP + SeriesEndEEP
    PermitStartEEP = SeriesPrefixEEP + SeriesStartEEP
    PermitEndEEP = SeriesPrefixEEP + SeriesEndEEP

    FirstNameEEP = "Amresh" + random
    LastNameEEP = "Swain"

    DropdownValueEEP6 = "Cash Drawer"
    CashDrawerCodeEEP = "Auto" + random
    CashDrawerDescriptionEEP = "AutomationCash" + random

    PermitNumberEEP1 = "EA110"
    PaymentMethodEEP1 = "EEP1"
    SaleItemDescriptionEEP = "Sale Item"




# ----------------------------------------ThirdParty---------------------------------------------------------

    # WI #48868 - Tasks: Generate Invoices

    SeriesStartGI = "120"
    SeriesEndGI = "130"
    CashDrawerCodeGI = "GI" + random
    CashDrawerDescriptionGI = "Description" + random
    ThirdPartyNameGI = "ThirdPartyGI8"
    FirstNameGI = "Pe" + random
    LastNameGI = "Pa" + random

    SeriesTypeGI = "Inventoried"
    PermitTypeGI = "Value Credential"
    SeriesPrefixGI = "GI" + random
    SeriesCharWidthGI = "11"
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
    SeriesPrefixPOI = "PO" + random
    SeriesCharWidthPOI = "11"
    DescriptionPOI = "Automated Access Permits"
    NamePOI = "Auto Access Permits Control Group"
    DefPerGLAccountPOI = "MISCELLANEOUS"
    RefundGLAccountPOI = "MISCELLANEOUS"
    RateAmountPOI = "100"
    PermitAllacoationPOI = SeriesPrefixPOI + SeriesStartPOI + " through " + SeriesPrefixPOI + SeriesEndPOI
    PermitStartPOI = SeriesPrefixPOI + SeriesStartPOI
    PermitEndPOI = SeriesPrefixPOI + SeriesEndPOI
    DrawerPOI = "Citation Office 1"
    FirstNamePOI = "jack" + random
    LastNamePOI = "spicer"
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
    SeriesPrefixTPAI = "TP" + random
    SeriesCharWidthTPAI = "11"
    FirstNameTPAI = "LA" + random
    LastNameTPAI = "LAND"
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

    # WI #48827 -  Send on the fly emails
    CodeCCSFM = "FE" + random
    DescriptionCCSFM = "Description" + random
    CodeCSSFM = "FC" + random
    DescriptionCSSFM = "Description" + random
    FirstNameSFM = "FES" + random

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

    # ----------------------------------------Vechiles------------------------------------------------------------

# WI #48868 - Tasks: Edit a Boot Tow record

    FieldNameBT1 = "CustomeBT" + random
    DisplayLabelBT1 = "Custom TextBT" + random
    FieldNameBT2 = "CustomeINTBT" + random
    DisplayLabelBT2 = "Custom IntegerBT" + random
    LicensePlateBT = "EBT" + random
    FirstNameBT = "MadhaviBT" + random

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






#------------------------------------------Customer----------------------------------------

# WI #48838 - Merge Two Customer Records

    SeriesPrefixPnrMTCR = "YZ" + random
    SeriesPrefixPnr2MTCR = "DJ" + random
    CitationCodeCvcMTCR = "CV" + random
    CitationDescriptionCvcMTCR = "DescriptionCVCMTCR" + random
    CitationCodeClMTCR = "CL" + random
    CitationDescriptionClMTCR = "DescriptionCLMTCR" + random
    CitationCodeCvcMTCR2 = "SR" + random
    CitationDescriptionCvcMTCR2 = "DescriptionCVCMTCR2" + random
    CitationCodeClMTCR2 = "PR" + random
    CitationDescriptionClMTCR2 = "DescriptionCLMTCR2" + random
    CitationNumber1EciMTCR = "MCR1" + random
    CitationNumber2EciMTCR = "MCR2" + random
    CodeCashDrawerMTCR = "MN" + random
    DescriptionCashDrawerMTCR = "DescriptionCDMTCR" + random
    CodeSellMTCR = "OP" + random
    DescriptionSellMTCR = "DescriptionCDMCR1" + random
    LicensePlateMTCR = "AB" + random
    LicensePlate1MTCR = "CD" + random
    CashDrawerCode2MTCR = "MO" + random
    CashDrawerDescription2MTCR = "DescriptionCD1MTCR" + random
    FirstNameMTCR1 = "Abhishek1" + random
    FirstNameMTCR2 = "Abhishek2" + random
    ThirdPartyNameMTCR1 = "TPOne" + random
    ThirdPartyNameMTCR2 = "TPTwo" + random

    SeriesStartPnrMTCR = "510"
    SeriesEndPnrMTCR = "520"
    SeriesCharWidthPnrMTCR = "11"
    LastNameMTCR1 = "MergeKeep"
    LastNameMTCR2 = "MergeRemove"
    StyleMTCR = "Four Door"
    ColorMTCR = "Black"
    ViolationCode1EciMTCR = "DESC QA101"
    Location1EciMTCR = "Citation Location 1"
    ContatctNameMTCR = "Third Party Contact Name"
    VehicleMakeMTCR = "Ford"
    VehicleModelMTCR = "Bronco"
    YearMTCR = "2005"
    TypeMTCR = "Owner"
    MiscDescriptionMTCR = "Account Deposit - Customer"
    AddressTypeMTCR = "Mailing"
    PrimaryStreetMTCR = "12345 Blue Street"
    CityMTCR = "Indianapolis"
    AddressStateMTCR = "INDIANA"
    CityMTCR2 = "Chicago"
    AddressStateMTCR2 = "ILLINOIS"

    DescriptionPnrMTCR = "automated access"
    SeriesTypePnrMTCR = "Inventoried"
    PermitTypePnrMTCR = "Access Hangtag"
    ViolationCode2EciMTCR = "DESC QA102"
    Location2EciMTCR = "Citation Location 1"
    State2EciMTCR = "ALASKA"
    ZoneClMTCR = "Zone 1"

    NameMTCR = "Auto Credentials Control Group"
    DefPerGLAccountMTCR = "MISCELLANEOUS"
    RefundGLAccountMTCR = "MISCELLANEOUS"
    EffectiveDateMTCR = "1/1/2017"
    ExpirationDateMTCR = "1/1/2018"
    AvailableForSaleDateMTCR = "1/1/2017"
    AvailableEndDateMTCR = "1/1/2018"
    FacilitiesMTCR = "Fac 1"
    RateAmountMTCR = "100"

    PermitAllacoationMTCR = SeriesPrefixPnrMTCR + SeriesStartPnrMTCR + " through " + SeriesPrefixPnrMTCR + SeriesEndPnrMTCR
    PermitStartMTCR = SeriesPrefixPnrMTCR + SeriesStartPnrMTCR
    PermitEndMTCR = SeriesPrefixPnrMTCR + SeriesEndPnrMTCR

    PermitAllacoation2MTCR = SeriesPrefixPnr2MTCR + SeriesStartPnrMTCR + " through " + SeriesPrefixPnr2MTCR + SeriesEndPnrMTCR
    PermitStart2MTCR = SeriesPrefixPnr2MTCR + SeriesStartPnrMTCR
    PermitEnd2MTCR = SeriesPrefixPnr2MTCR + SeriesEndPnrMTCR

    LookUpTableMTCR = "Cash Drawer"
    ClassificationMTCR = "Student"
    SubclassificationMTCR = "On Campus"
    NameMTCR2 = "SATISH"
    ContactNameMTCR = "JK"
    CashDrawerMTCR = "Cash Drawer"
    OpenLoginCashDrawerRadioMTCR = "Auto Cash Drawer 190"

    DropdownCvcMTCR = "Citation Violation Code"
    BaseAmountCvcMTCR = "100.00"
    GlAccountCvcMTCR = "MISCELLANEOUS"
    LongDescriptionCvcMTCR = "Long Description"
    DropDownClMTCR = "Citation Location"
    PaymentMethodMTCR = "Cash"
    DrawerDropDownMTCR = "Auto Cash 194"
    amountRiMTCR = "100.00"
    PaymentMethodRiMTCR = "Check"
    StateMTCR = "COLORADO"
    PlateTypeMTCR = "NA"



# WI #48866 - Customer Statement Letters

    CodeCCCSL = "ST" + random
    DescriptionCCCSL = "DescriptionCCCSL" + random
    CodeCSCSL = "SM" + random
    DescriptionCSCSL = "DescriptionCSCSL" + random
    CodeATCSL = "AT" + random
    DescriptionATCSL = "DescriptionATCSL" + random
    CodeCDCSL = "AM" + random
    DescriptionCDCSL = "DescriptionCDCSL" + random
    CodeCVCCSL = "AN" + random
    DescriptionCVCCSL = "DescriptionCVCCSL" + random
    CodeCLCSL = "AJ" + random
    DescriptionCLCSL = "DescriptionCLCSL" + random
    SeriesPrefixCSL = "MJ" + random
    FirstNameCSL = "MadhaviCSL" + random
    LicensePlateCSL = "TS" + random
    CitationNumberCSL = "EL" + random
    ThirdPartyNameCSL = "TPCSL" + random

    DropdownValueCCCSL = "Customer Classification"
    DropdownValueCSCSL = "Customer Subclassification"
    DropdownCDCSL = "Cash Drawer"
    PermitLimitCSL = "1000"
    DropdownValueATCSL = "Address Type"
    DropdownValueCVCCSL = "Citation Violation Code"
    DropdownValueCLCSL = "Citation Location"
    ZoneCSL = "Zone 1"
    BaseAmountCSL = "100"
    GlAccountCSL = "MISCELLANEOUS"
    LongDescriptionCSL = "Customer Statement Letters"

    SeriesTypeCSL = "Inventoried"
    PermitTypeCSL = "Access Hangtag"
    SeriesStartCSL = "111"
    SeriesEndCSL = "120"
    SeriesCharWidthCSL = "11"
    DescriptionCSL = "Automated Access Permits"

    NameCSL = "Auto Access Permits Control Group"
    DefPerGLAccountCSL = "MISCELLANEOUS"
    RefundGLAccountCSL = "MISCELLANEOUS"
    EffectiveDateCSL = "1/1/2017"
    ExpirationDateCSL = "1/1/2018"
    AvailableForSaleDateCSL = "1/1/2017"
    AvailableEndDateCSL = "1/1/2018"
    RateAmountCSL = 100
    FacilitiesCSL = "Fac 5"
    LastNameCSL = "test"

    PermitAllacoationCSL = SeriesPrefixCSL + SeriesStartCSL + " through " + SeriesPrefixCSL + SeriesEndCSL
    PermitStartCSL = SeriesPrefixCSL + SeriesStartCSL
    PermitEndCSL = SeriesPrefixCSL + SeriesEndCSL
    PermitNumberCSL = SeriesPrefixCSL + SeriesStartCSL

    StateVehicleCSL = "COLORADO"
    PlateTypeCSL = "NA"
    VehicleMakeCSL = "Ford"
    VehicleModelCSL = "Bronco"
    YearCSL = "2005"
    AddressTypeCSL = "Mailing"
    PrimaryStreetCSL = "12345 Blue2 Street"
    CityCSL = "Indianapolis"
    StateCSL = "INDIANA"
    StyleCSL = "Four Door"
    ColorCSL = "Black"
    TypeCSL = "Owner"
    TPContactNameCSL = "Third Party Contact Name"
    FilterCSL = "Payment Method"
    PaymentMethodCSL = "Cash"
    TaskNameCSL = "Customer Statement Letters"
    ScheduleDescriptionCSL = "Customer Statement Letters"
    TaskTypeCSL = "Customer Statement Letters"
    TimePeriodCSL = "One time"
    CustomerSubclassificationCSL = DescriptionCCCSL + ": " + DescriptionCSCSL
    StatementTypeCSL = "Complete Statement"
    CustomerBalanceStatusCSL = "Balance Only"
    StatementIntervalDaysCSL = "0"
    MaxLetterCountCSL = "0"
    DaysBeforeCitationCSL = "0"
    LetterTemplateCSL = "Batch Customer Statement"

    # ---------------------------------------TEST------------------------------------------------------------------------



    Value="" + random

# WI  # 49024 - Run Batch Updater Task (CitationUID)

    DropdownValueCC = "Customer Classification"
    CodeCC = "DcCC" + random
    DescriptionCC = "Description for DcCC" + random

    DropdownValueCSC = "Customer Subclassification"
    CodeCSC = "DcCC" + random
    DescriptionCSC = "Description for DcCC" + random

    FirstNameRBT = "Sherlock" + random
    LastNameRBT = "Holmes"

    DropdownValueVRT="Vehicle Relationship Type"
    CodeVRT = "DscVR" + random
    DescriptionVRT = "Description for DscVR" + random

    StateRBT = "INDIANA"
    PlateTypeRBT = "NA"
    LicensePlateRBT1 = "202" + random
    LicensePlateRBT2 = "203" + random
    TableRBT = "abc"
    VehicleMakeRBT ="BMW"
    VehicleModelRBT ="3 Series"
    VehicleStyleRBT ="Four Door"
    ColorRBT = "Black"
    TypeRBT = "Mailing"
    PrimaryStreetRBT = "12345 Blue Street"
    CityRBT = "Indianapolis"
    StateRBT = "COLORADO "
    PostalCodeRBT="123456"
    CitationNumberRBT1 = "BU01" + random
    CitationNumberRBT2 = "BU02" + random
    ViolationCodeRBT = "DESC QA102"
    LocationRBT = "Citation Location 1"
    LicensePlateRBT = "107" + random
    PlateTypeRBT = "NA"
    QueryNameRBT= "2159"
    QueryDescriptionRBT="Query Description OF CITE QS4"
    PermitLimitCSC="1000"
    TaskTypeRBT = "Batch Updater"
    TimePeriodRBT = "One time"
    TypeDR="abc"
    Selectfield ="Comment Private"
    CommentPrivateRBT="Test"

#WI #48827 -  Logout -Login Cash Drawer


    CodeGLALLCD = "GL" + random
    DescriptionGLALLCD = "DescriptionGLALCD" + random
    CodeCDLLCD = "LD" + random
    DescriptionCDLLCD = "DescriptionCDLCD" + random
    DescriptionMiscLLCD = "SILLC" + random

    DropdownValueGLALLCD = "General Ledger Account"
    DropdownValueCDLLCD = "Cash Drawer"
    AmountMiscLLCD = "10.00"
    MiscCategoryLLCD = "Sale Item"

    PaymentMethodLLCD = "Cash"
    ReferenceLLCD = "Misc. Sale Item"




    #Create Audit PNR-PCG


    CodeC_PCG = "HK" + random
    DescriptionC_PCG = "DescriptionCCPCG" + random
    CodeS_PCG = "KL" + random
    DescriptionS_PCG = "DescriptionCSPCG" + random
    SeriesPrefixPCG = "PG" + random
    CodePCGD = "LM" + random
    DescriptionPCGD = "DescriptionCDPCG1" + random
    CodePCGD2 = "MN" + random
    DescriptionPCGD2 = "DescriptionCDPCG2" + random
    FirstNamePCG = "SatishPCG" + random
    UserPCG = "PCGTest" + random
    NickNamePCG = "Nk" + random

    DropdownValueC_PCG = "Customer Classification"
    DropdownValueS_PCG = "Customer Subclassification"
    PermitLimitS_PCG = "1000"

    SeriesTypePCG = "Inventoried"
    PermitTypePCG = "Access Hangtag"
    SeriesStartPCG = "101"
    SeriesEndPCG = "110"
    SeriesCharWidthPCG = "11"
    DescriptionPCG = "Automated Access Permits"

    NamePCG = "Auto Renewal Control Group"
    DefPerGLAccountPCG = "MISCELLANEOUS"
    RefundGLAccountPCG = "MISCELLANEOUS"
    ExpirationDatePCG = "5"
    AvailableForSaleDatePCG = "1/1/2017"
    AvailableEndDatePCG = "1/1/2018"
    SaleFeePCG = 100

    PermitAllacoationPCG = SeriesPrefixPCG + SeriesStartPCG + " through " + SeriesPrefixPCG + SeriesEndPCG
    PermitStartPCG = SeriesPrefixPCG + SeriesStartPCG
    PermitEndPCG = SeriesPrefixPCG + SeriesEndPCG

    CashDrawerSelectPCGD = "Cash Drawer"
    LastNamePCG = "Test"
    TypePCG = "T2 Flex"
    PasswordPCG = "test"
    DescPCG = "SPIDERMA"

    DollarsPCG = "10"
    PercentagePCG = "0.00"
    WaiveAmountPCG = "5.00"
    PermitAmountPCG = "5.00"
    PaymentMethodPCG = "Cash"

    FilterPCG = "PymentMethod"
    OverrideIDPCG = "flexadmin"
    Password2PCG = "ame3m"
    OverrideReasonPCG = "Financial Override"
    OverrideCommentsPCG = "test"

# WI #48948 - Editing Permit Manager

    CodeCCEPM = "CC" + random
    DescriptionCCEPM = "DescriptionCCEPM" + random
    CodeCSEPM = "CD" + random
    DescriptionCSEPM = "DescriptionCSEPM" + random
    SeriesPrefixEPM = "MA" + random
    FirstNameEPM = "Madhavi" + random
    CodeCDEPM = "PM" + random
    DescriptionCDEPM = "DescriptionCDEPM" + random

    DropdownValueCCEPM = "Customer Classification"
    DropdownValueCSEPM = "Customer Subclassification"
    DropdownValueCDEPM = "Cash Drawer"
    PermitLimitEPM = 1000
    SeriesTypeEPM = "Inventoried"
    PermitTypeEPM = "Access Hangtag"
    SeriesStartEPM = "111"
    SeriesEndEPM = "120"
    SeriesCharWidthEPM = 11
    FacilitiesEPM = "Fac 2"
    RateAmountEPM = 30
    DescriptionEPM = "Automated Access Permits"
    NameEPM = "Auto Access Permits Control Group"
    DefPerGLAccountEPM = "MISCELLANEOUS"
    RefundGLAccountEPM = "MISCELLANEOUS"
    EffectiveDateEPM = "1/1/2017"
    ExpirationDateEPM = "1/1/2018"
    AvailableForSaleDateEPM = "1/1/2017"
    AvailableEndDateEPM = "1/1/2018"
    PermitAllacoationEPM = SeriesPrefixEPM + SeriesStartEPM + " through " + SeriesPrefixEPM + SeriesEndEPM
    PermitStartEPM = SeriesPrefixEPM + SeriesStartEPM
    PermitEndEPM = SeriesPrefixEPM + SeriesEndEPM
    PermitNumberEPM = SeriesPrefixEPM + SeriesStartEPM
    TypeEPM = "Mailing"
    PrimaryStreetEPM = "12345 West Street"
    CityEPM = "Indianapolis"
    StateEPM = "INDIANA"
    LastNameEPM = "Test"
    PaymentMethodEPM = "Cash"
    FilterEPM = "Payment Method"
    EffectiveDateNewEPM = "2/5/2017"
    ExpirationDateNewEPM = "2/5/2018"
    StallTypeEPM = "Compact Car"
    StallIdEPM = "Test"
    MailTrackingNumberEPM = "1234567890"


#

    SeriesPrefixRERP = "RE"+ random
    FirstNameRERP = "PARKER"+ random
    LastNameRERP="CRANE"

    SeriesTypeRERP = "Inventoried"
    PermitTypeRERP = "Access Hangtag"
    SeriesStartRERP = "100"
    SeriesEndRERP = "110"
    SeriesCharWidthRERP = "11"
    DescriptionRERP = "Automated Access Permits"

    NameRERP = "Auto Access Permits Control Group"
    DefPerGLAccountRERP = "MISCELLANEOUS"
    RefundGLAccountRERP = "MISCELLANEOUS"
    SaleFeeRERP = 100
    FacilitiesRERP = "Fac 2"
    PermitAllacoationRERP = SeriesPrefixRERP + SeriesStartRERP + " through " + SeriesPrefixRERP + SeriesEndRERP
    PermitStartRERP = SeriesPrefixRERP + SeriesStartRERP
    PermitEndRERP = SeriesPrefixRERP + SeriesEndRERP
    PermitNumberRERP = SeriesPrefixRERP + SeriesStartRERP
    CashDrawerSelectRERP = "Cash Drawer"

    ClassificationRERP = "Student"
    SubclassificationRERP = "On Campus"
    PaymentMethodRERP = "Cash"
    ExpirationDateRERP = "5"
    CashDrawerCodeRERP = "RE"+ random
    CashDrawerDescriptionRERP = "Description RERP"+ random


    RenewalDescriptionRERP = "Renewal Schedule"+ random
    ExpirationDateUponRERP = "Full Payment"
    RenewalTypeRERP = "Extend Expiration Date"
    TotalFeeAmountREP = 50
    RenewalPeriodStartsRERP = 10
    GracePeriodRERP = 10
    LastNameRERP = "test"
    TermTypeRERP = "Day"
    TermLengthRERP = "30"

#WI #48827 -  Payment Eligibility Management

    CodeGLAPEM = "GL" + random
    DescriptionGLAPEM = "DescriptionGLAPEM" + random
    CodeCDPEM = "GK" + random
    DescriptionCDPEM = "DescriptionCDPEM" + random
    DescriptionMiscPEM1 = "MiscDescOne" + random
    DescriptionMiscPEM2 = "MiscDescTwo" + random
    CodeCCPEM = "CC" + random
    DescriptionCCPEM = "DescriptionCCPEM" + random
    CodeCSPEM = "CS" + random
    DescriptionCSPEM = "DescriptionCSPEM" + random
    CodePMPEM1 = "PP" + random
    DescriptionPMPEM1 = "DescriptionPMPEM1" + random
    CodePMPEM2 = "PE" + random
    DescriptionPMPEM2 = "DescriptionPMPEM2" + random
    SeriesPrefixPEM = "MD" + random
    FirstNamePEM = "MadhaviPEM" + random
    DropdownValueGLAPEM = "General Ledger Account"
    DropdownValueCDPEM = "Cash Drawer"
    AmountMiscPEM1 = "10.00"
    AmountMiscPEM2 = "15.00"
    MiscCategoryPEM = "Sale Item"
    DropdownValueCCPEM = "Customer Classification"
    DropdownValueCSPEM = "Customer Subclassification"
    CustomerRolePEM = "Permit and Enforcement"
    PermitLimitPEM = "100"
    PaymentTypePEM1 = "Cash"
    PaymentTypePEM2 = "Check"
    DropdownValuePMPEM = "Payment Method"
    FilterFTPEM = "FinancialType"
    FinancialTypePEM1 = "Sale Item"
    FinancialTypePEM2 = "permission"
    FilterSPEM = "Payment Method"
    DefaultPOSHardwarePEM = "TM-U675 Printer Codes"
    SeriesTypePEM = "Inventoried"
    PermitTypePEM = "Hangtag"
    SeriesStartPEM = "111"
    SeriesEndPEM = "120"
    SeriesCharWidthPEM = 11
    DescriptionPEM = "Automated Access Permits"
    NamePEM = "Permit Control Group"
    ExpirationDateDaysPEM = 5
    AvailableForSaleDatePEM = "6/13/2017"
    AvailableEndDatePEM = "6/13/2018"
    SaleFeePEM = 100
    FacilitiesPEM = "Fac 5"
    PermitAllacoationPEM = SeriesPrefixPEM + SeriesStartPEM + " through " + SeriesPrefixPEM + SeriesEndPEM
    PermitStartPEM = SeriesPrefixPEM + SeriesStartPEM
    PermitEndPEM = SeriesPrefixPEM + SeriesEndPEM
    PermitNumberPEM = SeriesPrefixPEM + SeriesStartPEM
    ClassificationPEM = "Default"
    DrawerPEM = "Auto Cash 188"
    LastNamePEM = "Latha"

#Sell all types of transactions

    CodeGST = "GD" + random
    DescriptionGST = "Description" + random
    CodeCDST = "CF" + random
    DescriptionCDST = "DescriptionCDSTT" + random
    CodePMST = "JU" + random
    DescriptionPMST = "DescriptionPMSTT" + random
    DescriptionMiscST = "SISTT" + random
    CodeCCST = "CC" + random
    DescriptionCCST = "DescriptionCCSTT" + random
    CodeCSST = "CS" + random
    DescriptionCSST = "DescriptionCSSTT" + random
    FirstNameST = "MadhaviSTT" + random

    DropdownValueGS = "General Ledger Account"
    DropdownValueCDST = "Cash Drawer"
    AmountMiscST = "10.00"
    MiscCategoryST = "Sale Item"
    DropdownValueCCST = "Customer Classification"
    DropdownValueCSST = "Customer Subclassification"
    PermitLimitST = "100"
    PaymentTypeST = "Cash"

    SeriesPrefixST = "SK" + random
    SeriesTypeST = "Inventoried"
    PermitTypeST = "Hangtag"
    SeriesStartST = "111"
    SeriesEndST = "120"
    SeriesCharWidthST = 11
    DescriptionST = "Automated Access Permits"

    NameST = "Permit Control Group"
    DefPerGLAccountST = "MISCELLANEOUS"
    ExpirationDateDaysST = 5
    AvailableForSaleDateST = "6/13/2017"
    AvailableEndDateST = "6/13/2018"
    SaleFeeST = 100
    FacilitiesST = "Fac 5"

    RenewalDescriptionST = "Renewal Schedule"
    ExpirationDateUponST = "Full Payment"
    RenewalTypeST = "Extend Expiration Date"
    TermTypeST = "Day"
    TermLengthST = 30
    TotalFeeAmountST = 50
    RenewalPeriodStartsST = 10
    GracePeriodST = 10

    PermitAllacoationST = SeriesPrefixST + SeriesStartST + " through " + SeriesPrefixST + SeriesEndST
    PermitStartST = SeriesPrefixST + SeriesStartST
    PermitEndST = SeriesPrefixST + SeriesEndST
    LastNameST = "Latha"
    CustomerSubclassificationST = DescriptionCCST + " - " + DescriptionCSST

    DropdownValueCVCST = "Citation Violation Code"
    DropdownValueCLST = "Citation Location"
    DropdownValuePMST = "Payment Method"

    CitationCodeST = "TC" + random
    CitationDescriptionST = "Desc" + random
    BaseAmountST = "10.0"
    ZoneL = "Zone 2"
    LongDescriptionST = "Citation Violation Code Description"
    CitationCodeL = "TC" + random
    CitationDescriptionL = "Citation" + random

    CitationNumberST = "ST" + random
    LicensePlateST = "23" + random
    StateVehicleST = "COLORADO"
    PlateTypeST = "NA"
    StyleST = "Four Door"
    ColorST = "Black"
    GlAccountST = "MISCELLANEOUS"
    PaymentMethodST = "Cash"
    FilterST = "Payment Method"

    # WI #48868 - Tasks:  Refund Renewable Permits

    CodeCCRRP = "CD1"+random
    DescriptionCCRRP = "DescriptionCCRRP1"+random
    CodeCSRRP = "CD2"+random
    DescriptionCSRRP = "DescriptionCSRRP2"+random
    CodeCDRRP = "CD3"+random
    DescriptionCDRRP = "DescriptionCDRRP3"+random
    SeriesPrefixRRP = "RP"+random
    FirstNameRRP = "MadhaviP"+random

    DropdownValueCCRRP = "Customer Classification"
    DropdownValueCSRRP = "Customer Subclassification"
    SeriesTypeRRP = "Inventoried"
    PermitTypeRRP = "Access Hangtag"
    PermitLimitRRP = "1000"
    SeriesStartRRP = "111"
    SeriesEndRRP = "120"
    SeriesCharWidthRRP = 11
    DescriptionRRP = "Automated Access Permits"

    NameRRP = "Auto Access Permits Control Group"
    DefPerGLAccountRRP = "MISCELLANEOUS"
    RefundGLAccountRRP = "MISCELLANEOUS"
    ExpirationDateDaysRRP = 5
    AvailableForSaleDateRRP = "1/1/2017"
    AvailableEndDateRRP = "1/1/2018"
    RateAmountRRP = 100
    FacilitiesRRP = "Facility A"
    Link= "//td[text()='${SaleItemDescription}']/.."
    PermitAllacoationRRP = SeriesPrefixRRP + SeriesStartRRP + " through " + SeriesPrefixRRP + SeriesEndRRP
    PermitStartRRP = SeriesPrefixRRP + SeriesStartRRP
    PermitEndRRP = SeriesPrefixRRP + SeriesEndRRP
    PermitNumberRRP = SeriesPrefixRRP + SeriesStartRRP
    DrawerRRP = "Auto Cash 188"
    LastNameRRP = "Latha"
    RenewalDescriptionRRP = "Renewal Schedule_1"
    ExpirationDateUponRRP = "Full Payment"
    RenewalTypeRRP = "Extend Expiration Date"
    TermTypeRRP = "Day"
    TermLengthRRP = 30
    TotalFeeAmountRRP = 50
    RenewalPeriodStartsRRP = 10
    GracePeriodRRP = 10

    DropdownValueCDRRP = "Cash Drawer"
    PaymentMethodRRP = "Cash"
    FilterRRP = "Payment Method"
    ReferenceRRP = "Permit AutoRenewals"
    TaskNameRRP = "Automated Permit Renewal"
    ScheduleDescriptionRRP = "Automated Permit Renewal"
    TaskTypeRRP = "Permit Auto-Renewals"
    TimePeriodRRP = "One time"
    CustomerSubclassificationRRP = DescriptionCCRRP + ": " + DescriptionCSRRP
    ReturnReasonRRP = "Returned for Refund"
    RefundValueRPP = "5"


    testitem="Sale Item123200"