public class PropertyUtility {
    public static void newListedProperties(){
        list<Property__c> newPropList=new list<Property__c>();
        string propEmail;
        newPropList=[select Name, id, Days_On_Market__c, Broker__r.Email__c from Property__c where Days_On_Market__c < 31];
        for(Property__c proplist: newPropList){
           propEmail = 'email address: ' + proplist.Name + ' : ' + proplist.Broker__r.Email__c;
            system.debug(propEmail);
        }
    }
}