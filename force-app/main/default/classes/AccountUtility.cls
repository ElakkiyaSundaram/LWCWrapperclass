public class AccountUtility {
    public static void viewAnnualRevenue(){
        list<Account> accountsList=new list<Account>();
        accountsList= [select Name, AnnualRevenue from Account];
        string acctRev;
        for(Account acc:accountsList){
            acctRev='revenue: ' + acc.Name + ' : ' + acc.AnnualRevenue;
            system.debug(acctRev);
        }
    }

}