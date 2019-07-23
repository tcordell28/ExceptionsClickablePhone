import { LightningElement, api } from 'lwc';

export default class LightningExampleAccordionSectionBasic extends LightningElement {
    @api recordId;
    
        petownernumber = sforce.connection.query(
        "Select Client_Phone_Number__c from DVM_Order_Exception__c where id = recordId)");

        practicenumber = sforce.connection.query(
        "Select Practice_Phone_Number__c from DVM_Order_Exception__c where id = recordId)");
        
}