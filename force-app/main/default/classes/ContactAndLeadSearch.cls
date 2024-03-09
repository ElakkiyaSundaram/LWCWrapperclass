public class ContactAndLeadSearch {
    public static list<list<sObject>> searchContactsAndLeads(string searchtext){
         List<List<sObject>> searchContactsAndLeadsList = [FIND :searchtext IN ALL FIELDS RETURNING Contact(FirstName,LastName) ,Lead(FirstName,Lastname)];
        return searchContactsAndLeadsList ;
    }
    }