*** Settings ***
Documentation       Template robot main suite.

Library             String


*** Variables ***
${InputStringData}      List of value addition robot framework
${StartString}          List
${StringEnding}         framework


*** Tasks ***
StringBW Reusable
    Checking String Between data in Template InputString    ${InputStringData}    ${StartString}    ${StringEnding}


*** Keywords ***
Checking String Between data in Template InputString
    [Arguments]    ${InputStringData}    ${StartString}    ${StringEnding}
    ${result}=    Split String    ${InputStringData}    ${StartString}
    ${result}=    Split String    ${result}[1]    ${StringEnding}
    ${result}=    Set Variable    ${result}[0]
    ${result}=    Strip String    ${result}    both
