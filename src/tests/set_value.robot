*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
When counter is set to a specific value the value is updated accordingly
    Go To  ${HOME_URL}
    Input Text  new_value  10
    Click Button  Aseta arvo
    Page Should Contain  nappia painettu 10 kertaa