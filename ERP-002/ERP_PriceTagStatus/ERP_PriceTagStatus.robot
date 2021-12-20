*** Settings ***
Library       SeleniumLibrary
Resource      ../ERP_Global_Variables.resource
Resource      ../ERP_Global_Keywords.resource
Resource      PriceTagStatus.resource

*** Test Cases ***
Verify that user can enter Price Tag Status
    Login To ERP        ${user2}    ${user2pw}
    Close Browser
