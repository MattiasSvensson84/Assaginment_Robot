*** Settings ***
Resource                                     page_bedroom.robot

*** variables ***
${create_new_bedroom_pg_label}              Create New Bedroom


${description}                              id=description
${floor}                                    id=floor
${number}                                   id=number
${priceDaily}                               id=priceDaily
${bedrom_status_ID}                         id=bedroomStatusId
${bedrom_status_ID_submenu}                 xpath=//*[@id='bedroomStatusId']/option[2]
${type_bedroom_ID}                          id=typeBedroomId
${type_bedroom_ID_submenu}                  xpath=//*[@id='typeBedroomId']/option[2]
${save_btn}                                 xpath=.//*[@class="btn btn-primary"]
${succes_message}                           xpath=//*[@id='messagePanel']/table/tbody/tr/td
${show_all_bedroom_btn}                    xpath=//*[@id='j_idt50']/a[2]


*** Keywords ***
perform create new bedroom     
    Input Text                              ${description}                      AutoTest
    Input Text                              ${floor}                            10
    Input Text                              ${number}                           123
    Input Text                              ${priceDaily}                       20000
    
    click element                           ${bedrom_status_ID}
    click element                           ${bedrom_status_ID_submenu}
    click element                           ${type_bedroom_ID} 
    click element                           ${type_bedroom_ID_submenu}
    click element                           ${save_btn}
    Element Text Should Be                  ${succes_message}                   Bedroom was successfully created.
