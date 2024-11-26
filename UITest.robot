*** Settings ***
Library           SeleniumLibrary
Suite Setup       Log    I'm Inside TS Setup
Suite Teardown    Log    I'm Inside TS Teardown
Test Setup        Log    I'm inside Test Setup
Test Teardown     Log    I'm Inside Test Teardown
Default Tags      Sanity

*** Variables ***
${Username}       standard_user
${Password}       secret_sauce

*** Test Cases ***
TC-001
# Open
    Open Browser    https://www.saucedemo.com/    chrome

# Login
    Wait Until Element Is Visible    xpath=//*[@id="user-name"]
    Input Text                       xpath=//*[@id="user-name"]    ${Username}
    Input Text                       xpath=//*[@id="password"]     ${Password}
    Click Button                     xpath=//*[@id="login-button"]

# Shopping
    Wait Until Element Is Visible    xpath=//*[@id="add-to-cart-sauce-labs-backpack"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-backpack"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-bike-light"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-fleece-jacket"]
    Click Button                     xpath=//*[@id="add-to-cart-sauce-labs-onesie"]
    Click Button                     xpath=//*[@id="add-to-cart-test.allthethings()-t-shirt-(red)"]
    Sleep    20

# Click on Shopping Cart
    Wait Until Element Is Visible     xpath=//*[@id="shopping_cart_container"]           timeout=10
    Wait Until Element Is Visible     xpath=//*[@id="shopping_cart_container"]/a         timeout=10
    Wait Until Element Is Visible     xpath=//*[@id="shopping_cart_container"]/a/span    timeout=10
    Click Button                      xpath=//*[@id="shopping_cart_container"]
    Click Button                      xpath=//*[@id="shopping_cart_container"]/a
    Click Button                      xpath=//*[@id="shopping_cart_container"]/a/span

# Checkout
    Wait Until Element Is Visible     xpath=//*[@id="checkout"]
    Click Button                      xpath=//*[@id="checkout"]

# Information
    Wait Until Element Is Visible     xpath=//*[@id="first-name"]
    Input Text                        xpath=//*[@id="first-name"]    John
    Input Text                        xpath=//*[@id="last-name"]     Doe
    Input Text                        xpath=//*[@id="postal-code"]   12345
    Click Button                      xpath=//*[@id="continue"]

# Finish
    Wait Until Element Is Visible    xpath=//*[@id="finish"]
    Click Button                     xpath=//*[@id="finish"]
    Wait Until Element Is Visible    xpath=//*[@id="back-to-products"]
    Click Button                     xpath=//*[@id="back-to-products"]

# End
    Close Browser
