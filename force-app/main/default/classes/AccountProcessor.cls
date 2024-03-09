public class AccountProcessor {
    @Future
    public static void countContacts(List<Id> accountIds){
        	List<Account> accountlist = [Select Id, (Select Id from Contacts) from Account Where Id IN :accountIds];
        for(Account acc:accountlist){
            acc.Number_Of_Contacts__c=acc.Contacts.size();
            system.debug(acc.id);
        }
        update accountlist;
    }

}