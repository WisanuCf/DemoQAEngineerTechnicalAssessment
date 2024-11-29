*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/variables.robot

*** Keywords ***
Open Application
    Open Browser    ${URL}    ${Browser}

Login To Application
    Wait Until Element Is Visible    xpath=//*[@id="user-name"]
    Input Text                       xpath=//*[@id="user-name"]    ${Username}
    Input Text                       xpath=//*[@id="password"]     ${Password}
    Click Button                     xpath=//*[@id="login-button"]

Add Items To Cart
    Wait Until Element Is Visible    xpath=//*[@id="add-to-cart-sauce-labs-backpack"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-backpack"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-bike-light"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-fleece-jacket"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-onesie"]
    Click Button                     xpath=//*[@id="add-to-cart-test.allthethings()-t-shirt-(red)"]
    Sleep                            2

Proceed To Checkout
    Click Element                    xpath=//*[@id="shopping_cart_container"]
    Wait Until Element Is Visible    xpath=//*[@id="checkout"]
    Click Button                     xpath=//*[@id="checkout"]

Enter Shipping Information
    Wait Until Element Is Visible    xpath=//*[@id="first-name"]
    Input Text                       xpath=//*[@id="first-name"]    ${FirstName}
    Input Text                       xpath=//*[@id="last-name"]     ${LastName}
    Input Text                       xpath=//*[@id="postal-code"]   ${PostalCode}
    Click Button                     xpath=//*[@id="continue"]

Finish Purchase
    Wait Until Element Is Visible    xpath=//*[@id="finish"]
    Click Button                     xpath=//*[@id="finish"]
    Wait Until Element Is Visible    xpath=//*[@id="back-to-products"]
    Click Button                     xpath=//*[@id="back-to-products"]

Close Application
    Close Browser