*** Settings ***
Documentation    Simple example using SeleniumLibrary - Test suite
Resource    input_resources.robot
Test Setup  Set Selenium Speed  0.5
Test Teardown  run keyword if  '${TEST_STATUS}' == 'FAIL'  Recovery from test case failure

*** Test Cases ***
TC001 - Open WebBrowser and jobnorth
    Open browser to jobnorth

TC002 - Input username//password//confirm_password//email
    Fill username
    Fill password
    Fill confirm password
    Fill email
    Click confirm register

TC003 - Close browser    
    sleep    3s
    close all browsers
