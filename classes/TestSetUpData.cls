/*
    @author:         Bonny Hinners
    @description:    Test class for creating test data in silo                     
*/
@isTest
public class TestSetUpData {
    
    public static void createAccountContact() {
        Test.loadData(Account.sObjectType, 'Account');
        Test.loadData(Contact.sObjectType,'Contact');
    }      
 
// https://trailhead.salesforce.com/en/modules/business_process_automation/units/process_builder

    public static void createAccConAddressless() {
        Test.loadData(Account.sObjectType, 'Account');
        Test.loadData(Contact.sObjectType,'ContactAddressProcess');
    }   
    
}