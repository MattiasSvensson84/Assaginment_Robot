*** Settings ***
Resource                                     page_login.robot

*** variables ***
${create_hotel_reservation_pg_label}           Create New Hotel Reservation

${entry_date}                                  id=entryDate
${date_from}                                   xpath=(//*[@class="input-mini"])[1]
${date_to}                                     xpath=(//*[@class="input-mini"])[2]
${apply_btn}                                   xpath=(.//*[@class="applyBtn btn btn-small btn-sm btn-success"])[1]
${res_bedroom_menu}                            id=bedroomId
${res_bedroom_submenu}                         xpath=//*[@id='bedroomId']/option[2]
${client_menu}                                 id=clientId
${client_submenu}                              xpath=//*[@id='clientId']/option[2]
${reservationStatus_menu}                      id=reservationStatusId
${reservationStatusId_submenu}                 xpath=//*[@id='reservationStatusId']/option[2]
${res_save}                                    xpath=//*[@id='j_idt50']/a[1]
${res_message}                                 id=messagePanel


*** Keywords ***
perform edit reservation     
    Wait Until Page Contains Element           ${entry_date}
    click element                              ${entry_date}
    input text                                 ${date_from}                2017-06-10
    input text                                 ${date_to}                  2017-06-17
    click element                              ${apply_btn}
    click element                              ${res_bedroom_menu}
    click element                              ${res_bedroom_submenu} 
    click element                              ${client_menu}
    click element                              ${client_submenu} 
    click element                              ${reservationStatus_menu}
    click element                              ${reservationStatusId_submenu} 
    click element                              ${res_save} 
    Element Text Should Be                     ${res_message}                Reservation was successfully created.       