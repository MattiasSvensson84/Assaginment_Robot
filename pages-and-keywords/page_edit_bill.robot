*** Settings ***
Resource                                     page_login.robot

*** variables ***
${edit_bill_pg_label}                            Edit Bill


${bill_status_menu}                        id=j_idt50:billStatusId
${bill_status_submenu}                     xpath=//*[@id='j_idt50:billStatusId']/option[2]
${save}                                    xpath=//*[@id='j_idt50']/a[1]
${edit_message}                            id=messagePanel

*** Keywords ***
perform edit bill     
    Wait Until Page Contains Element           ${bill_status_menu}
    click element                              ${bill_status_menu}
    Wait Until Page Contains Element           ${bill_status_submenu}
    click element                              ${bill_status_submenu}
    click element                              ${save} 
    Element Text Should Be                     ${edit_message}                             Bill was successfully updated.         