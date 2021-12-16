*** Settings ***
Library       SeleniumLibrary
Resource      ERP_Global_Variables.resource

*** Keywords ***
Login To ERP
    [Arguments]                      ${username}    ${password}
    Open Browser                     ${url}             ${browser}
    Wait Until Element Is Visible    ${ERP_LoginBtn}    5
    Input Text                       ${ERP_Username}    ${username}
    Input Password                   ${ERP_Password}    ${password}
    Click Button                     ${ERP_LoginBtn}
    

Hover Menu
    [Arguments]                      ${ERP_SelectedMenu}
    Wait Until Element Is Visible    ${ERP_LeftMenu}    5
    Mouse Over                       ${ERP_SelectedMenu}
    
Go To Function
    [Arguments]                      ${ERP_SelectedFunction}
    Wait Until Element Is Visible    ${ERP_SelectedFunction}    5
    Click Element                    ${ERP_SelectedFunction}
    
    
Verify Page
    [Arguments]                      ${Page}
    Wait Until Element Is Visible    ${nav_hint}    5
    Element Should Contain           ${nav_hint}    ${Page}