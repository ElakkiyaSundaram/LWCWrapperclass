public class AccountHandler {
    public static void insertAccount(Integer count) {
        Integer counter =1;
        List<Account> addAccounts = new List<Account>();
        while(counter <= count){
            Account addaccount =new Account();
            addaccount.Name='Acme Inc N' + counter;
            addaccount.AccountNumber= 'A000n' + counter;
            addAccounts.add(addaccount);
            counter=counter+1;
        }
        insert addAccounts;
        system.debug(addAccounts.size());
        system.debug(addAccounts);
    }
    /*public static Account insertNewAccount(string name){
        Account acc=new Account(Name=name);
        try{
           insert acc;
            return acc;
        }
        catch(DmlException e){
            system.debug('the following exception has occured:'+e.getMessage());
            return null;
        }        
    }*/
}