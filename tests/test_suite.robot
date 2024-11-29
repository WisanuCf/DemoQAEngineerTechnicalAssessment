*** Settings ***
Resource          ../variables/variables.robot
Resource          ../resources/keywords.robot
Suite Setup       Log    I'm Inside Test Suite Setup
Suite Teardown    Log    I'm Inside Test Suite Teardown
Test Setup        Log    I'm inside Test Setup
Test Teardown     Log    I'm Inside Test Teardown
Default Tags      Sanity

*** Test Cases ***
TC-001 Purchase Items
    [Documentation]    Test case for purchasing items on saucedemo.com
    Open Application
    Login To Application
    Add Items To Cart
    Proceed To Checkout
    Enter Shipping Information
    Finish Purchase
    Close Application
