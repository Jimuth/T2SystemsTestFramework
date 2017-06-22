*** Settings ***
Library           XML
Library           ../../../Resources/CustomSelenium2Library.py

*** Keywords ***
Select Customer Search
    Wait Until Element Is Enabled    xpath=//tr[@onclick='T2ClickSideBar(this)']//td[contains(.,'Search')]    30
    Click Element    xpath=//tr[@onclick='T2ClickSideBar(this)']//td[contains(.,'Search')]
    Click Element    xpath=//a[contains(text(),'Customer Search')]

Search Customers Page
    [Arguments]    ${LastName}    ${FirstName}
    wait until element is visible    xpath=//*[@id='searchEntityControl1_LastNameText_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='searchEntityControl1_LastNameText_T2FormTextBox_TextBox']    ${LastName}
    Input Text    xpath=//*[@id='searchEntityControl1_FirstNameText_T2FormTextBox_TextBox']    ${FirstName}
    Click Element    xpath=//*[@id='searchEntityControl1_SearchButton']

Select Address Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]    10
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[16]/td[2]/a

Select Vehicle Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]    10
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[17]/td[2]/a

Select Permit Search
    wait until element is visible    xpath=//td[contains(text(), 'Search')]    10
    click Element    xpath=//td[contains(text(), 'Search')]
    Click Element    xpath=//a[contains(text(), 'Permit Search')]

Search Permit Page
    [Arguments]    ${SeriesPrefixCD}
    wait until element is visible    xpath=//*[@id='ctl06_T2FormTextBox_TextBox']    10
    Input Text    xpath=//*[@id='ctl06_T2FormTextBox_TextBox']    ${SeriesPrefixCD}
    Click Element    xpath=//*[@id='ctl12']

Select Citation Search
    wait until element is visible    xpath=//td[contains(text(), 'Search')]    10
    click Element    xpath=//td[contains(text(), 'Search')]
    Click Element    xpath=//a[contains(text(), 'Citation Search')]

Search Citation Page
    [Arguments]    ${CitationNumber}
    wait until element is visible    xpath=//input[@id='ContraventionNumberText_T2FormTextBox_TextBox']    10
    Input Text    xpath=//input[@id='ContraventionNumberText_T2FormTextBox_TextBox']    ${CitationNumber}
    Click Element    xpath=//a[text()='Search']

Select Facility Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[20]/td[2]/a

Select Appeal Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[21]/td[2]/a

Select Property Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[22]/td[2]/a

Select Third Party Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[23]/td[2]/a

Select Event Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[24]/td[2]/a

Select Reservation Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[25]/td[2]/a

Select Asset Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[26]/td[2]/a

Select Docket Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[27]/td[2]/a

Select Validation Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[28]/td[2]/a

Select Loyalty Card Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[29]/td[2]/a

Select Credit Card Credential Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[30]/td[2]/a

Select Contract Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[31]/td[2]/a

Select Finder Search
    wait until element is visible    path=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[14]/td[2]
    Click Element    xpath=//*[@id="PageSideBar"]/tbody/tr[32]/td[2]/a
