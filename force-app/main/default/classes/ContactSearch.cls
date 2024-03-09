public class ContactSearch {
    public static List<contact> searchForContacts(string LN, string  MPC){
        list<contact> con = new list<contact>();
        con= [select  ID, Name from contact where LastName=:LN and MailingPostalCode =:MPC];
        return con;
        
        
    }

}