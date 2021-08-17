*** Settings ***
Resource        base.robot
Test Setup      Start Session
Test Teardown   End Session

*** Variables ***
${table}            table2
${xpath_john}       xpath:.//*[@id='table1']/tbody/tr[contains(.,'John')]
${css_last_name}    css:td[class='last-name']
${last_name}        Smith
${email}            jsmith@gmail.com
${website}          http://www.jsmith.com

*** Test Cases ***
Verify row value
    Go To                           ${base_url}/tables
    Table Row Should Contain        ${table}                1       ${website}

Verify cell value
    Go To                           ${base_url}/tables
    Table Cell Should Contain       ${table}                2       5       ${website}

Find row values by Xpath
    Go To               ${base_url}/tables
    ${row}=             Get WebElement          ${xpath_john}
    Should Contain      ${row.text}             ${last_name}
    Should Contain      ${row.text}             ${email}

Find cell value by CSS selector
    Go To               ${base_url}/tables
    ${cell}=            Get WebElement          ${css_last_name}
    Should Contain      ${cell.text}            ${last_name}