*** Settings ***
Library                              Selenium2Library
Library                              OperatingSystem
Resource                             ./pages-and-keywords/test_setup_and_teardown.robot
Resource                             ./pages-and-keywords/page_login.robot
Resource                             ./pages-and-keywords/page_dashboard.robot
Resource                             ./pages-and-keywords/page_bedroom.robot
Resource                             ./pages-and-keywords/page_create_new_bedroom.robot
Resource                             ./pages-and-keywords/page_bill.robot
Resource                             ./pages-and-keywords/page_edit_bill.robot
Resource                             ./pages-and-keywords/page_reservation.robot
Resource                             ./pages-and-keywords/page_create_hotel_reservation.robot


Test setup                          Setup  
Test teardown                       Teardown 

*** Test cases***
Test create new bedroom
    login into the system
    perform nav bedroom   
    perform nav to create new bedroom 
    perform create new bedroom 
    
    
    
Test delete same bedroom fom before
    login into the system
    perform nav bedroom
    perform delete bedroom
    
    
    
Test edit bill
    login into the system
    perform nav bill
    perform nav edit bill
    perform edit bill
    
#The reservation site is broken right now so this one fails in the last step 
# when i want to verify thet it was a succses to create a reservation   
Test create hotel reservation
    login into the system
    perform nav reservation
    perform nav create hotal reservation 
    perform edit reservation 
  
Test index button on hotel reservation 
    login into the system
    perform nav reservation
    perform nav index button hotal reservation   