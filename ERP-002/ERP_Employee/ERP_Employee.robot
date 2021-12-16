*** Settings ***
Library       SeleniumLibrary
Resource      ../ERP_Global_Variables.resource
Resource      ../ERP_Global_Keywords.resource

Resource      Employee.resource

*** Test Cases ***

Verify If User Can Access Employee/System Function
    Login To ERP                       ${user1}    ${user1pw}
    Hover Menu                         ${ERP_Employee}
    Go To Function                     ${ERP_SystFunc}
    Verify Page                        ${SystFunc}
    Close Browser
    
Verify If User Can Access Employee/Message Center
    Login To ERP                       ${user1}    ${user1pw}
    Hover Menu                         ${ERP_Employee}
    Go To Function                     ${ERP_MsgCenter}
    Verify Page                        ${MessageCenter}
    Close Browser
 
  
# Login To ERP
    # Open Browser                     ${url}             ${browser}
    # Wait Until Element Is Visible    ${ERP_LoginBtn}
    # Input Text                       ${ERP_Username}    ${user1}
    # Input Password                   ${ERP_Password}    ${user1pw}
    # Click Button                     ${ERP_LoginBtn}
    # Close Browser
    
    # Wait Until Element Is Visible      ${ERP_SystFunc_View}    10
    # Page Should Contain Element        ${ERP_SystFunc_View}