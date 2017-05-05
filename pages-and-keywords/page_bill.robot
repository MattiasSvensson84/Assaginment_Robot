*** Settings ***
Resource                                     page_login.robot

*** variables ***
${bill_pg_label}                            List


${edit_bill}                               xpath=//*[@id='j_idt49']/table/tbody/tr[1]/td[7]/a[2]
${delete_btn}                              xpath=//*[@id='j_idt49']/table/tbody/tr[7]/td[8]/a[3]
${message}                                 id=j_idt49:messagePanel

*** Keywords ***
perform nav edit bill     
    Wait Until Page Contains Element           ${edit_bill}
    click element                              ${edit_bill}

                 