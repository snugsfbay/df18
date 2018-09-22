/*
    @author Bonny Hinners
*/
@isTest
public class TestUpdates{

    @testSetup
    static void ACsetup(){
        TestSetupData.createAccountContact();
    }
    
    @isTest
    static void ACtest(){    
        System.assert([SELECT COUNT() FROM Account]>0, 'Accounts must be added.');
        System.assert([SELECT COUNT() FROM Contact]>0, 'Contacts must be added.');                
    }
    
    @isTest
    static void ACprocess(){
        System.assert([SELECT Account.Name FROM Contact LIMIT 1].Account.Name != null, 'Contacts must have parent Accounts.');
    }    

}