public class AccaddressTriggerHandler {
    public static void beforeinsertrecords(list<Account> acclist){
        if(!acclist.isEmpty()){
            for(Account acc: acclist){
                if(acc.Match_Billing_Address__c==true){
                    acc.ShippingPostalCode=acc.BillingPostalCode;
                }
            }
        }
    }
}