*** Settings ***
Library         SeleniumLibrary
Library         DataDriver          ../Resources/credential.csv         sheet_name=sheet1
Variables       ../Resources/locator.yaml
test Setup      Open Browser        ${base_url}     ${base_type}
test Teardown   Close Browser 
Test Template   I login with valid username and valid password

*** Variables ***
${base_url}     https://www.saucedemo.com/  
${base_type}    gc

*** Keywords ***
I login with valid username and valid password
    Maximize Browser Window
    [Arguments]     ${username}                 ${password}
    Input Text      ${input_username}           ${username}         
    Input Text      ${input_password}           ${password}
    Click Element   ${login}     

*** Test Cases ***
Login with valid username and valid password using CSV file         ${username}                    ${password}
     