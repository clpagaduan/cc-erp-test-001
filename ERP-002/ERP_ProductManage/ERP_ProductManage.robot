*** Settings ***
Library       SeleniumLibrary
Resource      ../ERP_Global_Variables.resource
Resource      ../ERP_Global_Keywords.resource

Resource      ProductManage.resource

*** Test Cases ***

Verify If User Can Access Product Manage/Item Price
    Login To ERP                       ${user2}    ${user2pw}
    Hover Menu                         ${ERP_ProductManage}
    Go To Function                     ${ERP_ItemPrice}
    Verify Page                        ${ItemPrice}
    Close Browser
    
Verify If User Can Access Product Manage/Price Tag Status
    Login To ERP                       ${user2}    ${user2pw}
    Hover Menu                         ${ERP_ProductManage}
    Go To Function                     ${ERP_PriceTagStatus}
    Verify Page                        ${PriceTagStatus}
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