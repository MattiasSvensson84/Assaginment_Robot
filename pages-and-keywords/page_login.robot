*** Settings ***
Resource                                         ../credentials/login_variables.robot
Resource                                         page_dashboard.robot


*** variables ***
${login_pg_label_login}                          Login
${login_pg_title}                                Hotel Accomodation - login page

# LOgin Form.
${login_pg_username_textfield}                   id=formLogin:login
${login_pg_password_textfield}                   id=formLogin:senha
${login_pg_btn_login}                            name=formLogin:j_idt27


*** keywords ***
login_into_the_system    
    Input Text                               ${login_pg_username_textfield}                      ${username} 
    Input Text                               ${login_pg_password_textfield}                      ${password} 
    Click Element                            ${login_pg_btn_login}
    Wait Until Page Contains                 ${dashboard_pg_label_dashboard}   
   
    