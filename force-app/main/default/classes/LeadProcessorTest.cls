@isTest
public class LeadProcessorTest {
    @testSetup
    static void setup() {
        List<Lead> Leads = new List<Lead>();        
        // insert 10 Leads
        for (Integer i=0;i<10;i++) {
            Leads.add(new Lead(FirstName='FirstName',
                LastName='LastName'+i, Company='demo'+i));
        }
    }

}