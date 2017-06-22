*** Settings ***
Library             Selenium2Library
Resource            ../Keywords/Flex_Login/Flex_Login_kw.robot
Resource            ../Keywords/Main_Flex_Page/Main_Create_kw.robot


Suite Setup         Go to homepage
#Suite Teardown      Close all Browsers

*** Variables ***
${HOMEPAGE}     http://uwmad.t2qa.com/uwmadqa1/powerpark
${BROWSER}      chrome

*** Test Cases ***
T2 Flex Insert Customer
    [Tags]  P2     TC34567
    ${Username}   Generate Random Customer Name

    Given Login Generic User  LewisM   test
    When Select Insert Customer
    And input text      id=EntityInsertWizard_WizardStep1Individual_S1GroupName_T2FormTextBox_TextBox  ${Username}
    And input text      id=EntityInsertWizard_WizardStep1Individual_S1PrimaryID_T2FormTextBox_TextBox   123456783
    And input text      id=EntityInsertWizard_WizardStep1Individual_S1SecondaryID_T2FormTextBox_TextBox     5678901233
    And input text      id=EntityInsertWizard_WizardStep1Individual_S1TertiaryID_T2FormTextBox_TextBox      98882343
    And input text      id=EntityInsertWizard_WizardStep1Individual_S1DriversLicense_T2FormTextBox_TextBox  1258883
    And input text      id=EntityInsertWizard_WizardStep1Individual_S1QuaternaryID_T2FormTextBox_TextBox    PVI1123113
    And click element   id=EntityInsertWizard_EntityInsertWizard_Next
    Then Wait Until Page Contains  Enter Detailed Information.



