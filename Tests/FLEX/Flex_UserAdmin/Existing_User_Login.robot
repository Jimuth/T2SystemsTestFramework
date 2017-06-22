# Author: Jason Probala
# This file contains the test cases for testing the Logging in an existing user
# Time: May 16, 2017

*** Settings ***
Library             Selenium2Library
Library             OperatingSystem
Library             Zephyr.py
Resource            ../../Keywords/Flex_Login/Flex_Login_kw.robot




# Suite Setup         Go to homepage
Suite Teardown        close all browsers


*** Variables ***
${HOMEPAGE}     http://automation.t2qa.com/AUTOQA1/PowerPark
${BROWSER}      chrome



*** Test Cases ***

Flex Successful Login
    [Tags]  P1    Test-26
    set test variable  ${TC}  25467
    set test variable  ${project}  10000
    Create Zephyr Execution  data  ${TC}  ${project}
    Given Go to homepage
    When Login Generic User  Autouser   test
    Then Wait Until Page Contains  Welcome
    And close all browsers


Flex Failed Login - Bad Password
     [Tags]  P2    Test-28
    set test variable  ${TC}  25573
    set test variable  ${project}  10000
    Create Zephyr Execution  data  ${TC}  ${project}
    Given Go to homepage
    When Login Generic User  Autouser   test1
    Then wait until page contains  Failed to authenticate username/password. (5451)
    And close all browsers

Flex Failed Login - Bad Username
    [Tags]  P3     Test-27
    set test variable  ${TC}  25467
    set test variable  ${project}  10000
    Create Zephyr Execution  data  ${TC}  ${project}
    Given Go to homepage
    When Login Generic User  Autouser1   test
    Then wait until page contains  Failed to authenticate username/password. (5451)
    And close all browsers

Flex Successful System Admin Login
    [Tags]  P3     Test-29
    set test variable  ${TC}  25905
    set test variable  ${project}  10000
    Create Zephyr Execution  data  ${TC}  ${project}
    Given Go to homepage
    When Login System Admin   FlexAdmin   ame3m
    Then Wait Until Page Contains  Welcome
    And close all browsers