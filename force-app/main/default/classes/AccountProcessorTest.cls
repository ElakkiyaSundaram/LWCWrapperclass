@IsTest
public class AccountProcessorTest {
    @IsTest
    private static void countContactsTest(){
        //load test data
        List<Account> accounts=new List<Account>();
        for (Integer i=0; i<300; i++){
            accounts.add(new Account(Name='TestAccount'+i));            
        }
        insert accounts;
		List<Contact> contacts=new List<Contact>();
		List<ID> accountid=new List<ID>();
    for(Account acc:accounts){
        contacts.add(new Contact(FirstName=acc.Name, LastName='TestContact', AccountId=acc.ID));
        accountid.add(acc.id);
    }
    insert contacts;
    //do the test
    Test.startTest();
    AccountProcessor.countContacts(accountid);
    Test.stopTest();
    
    //Check Result
    List<Account> lisacc= [Select id,Number_Of_Contacts__c from Account];
    for(Account acc:lisacc){
        system.assertEquals(1, acc.Number_Of_Contacts__c,'Error:atleat 1 record incorrect');
 		}
   }

}