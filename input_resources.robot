*** Settings ***
Documentation    Simple example using SeleniumLibrary - Resources
Library  SeleniumLibrary

*** Variables ***
${url}    https://www.jobnorththailand.com/account/register_form/member
${Browser}      edge

*** Keywords ***
Open browser to jobnorth
    open browser  ${url}    ${browser}
    title should be  ฟอร์มสมัครสมาชิก

Fill username
    input text  name:username  UserName
Fill password
    input text  name:password  Password
Fill confirm password
    input text  name:confirm_password  Password
Fill email
    input text  name:email  ontninjao@gmail.com
Click confirm register
    click element  id:btn-submit-form
    
Recovery from test case failure
    close browser
    open browser  ${url}    ${browser}
    title should be  ฟอร์มสมัครสมาชิก
    Fill username
    Fill password
    Fill confirm password
    Fill email
    Click confirm register