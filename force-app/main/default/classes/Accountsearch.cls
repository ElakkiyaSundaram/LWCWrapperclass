public class Accountsearch {
//Get the list of account based on search input
    @AuraEnabled
    public static List<Account> fetchAccount(){
        list<Account> acclist =new List<Account>();
        acclist = [select Name
                  ,AccountNumber
                  ,AnnualRevenue
                  from Account
                  limit 15];
return   acclist;      
        
    }
}