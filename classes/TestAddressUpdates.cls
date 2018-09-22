/*
    @author Bonny Hinners
    @description Test whether PB Contact_Address_Update assigns addresses to Contacts
*/
@isTest
public class TestAddressUpdates{

    @testSetup
    static void ACsetup(){
        TestSetupData.createAccConAddressless();
    }
    
    @isTest
    static void ACtest(){    
        System.assert([SELECT COUNT() FROM Account]>0, 'Accounts must be added.');
        System.assert([SELECT COUNT() FROM Contact]>0, 'Contacts must be added.');                
    }
    
    @isTest
    static void ACprocess(){
        System.assert([SELECT Account.Name FROM Contact LIMIT 1].Account.Name != null, 'Contacts should have parent Accounts.');
        System.assert([SELECT COUNT() FROM Contact WHERE MailingStreet = null]==0, 'Contacts may not have blank addresses.');
    }    

}