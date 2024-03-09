public class fetchopportunity {
    //Get the list of Opportunity
    @AuraEnabled
    public static List<Opportunity> getopportunity(){
		List<Opportunity> oplist = [SELECT
                                   	AccountId,
                                    Name, 
                                    Amount, 
                                    Type, 
                                    StageName, 
                                    CloseDate, 
                                    LeadSource
                                    from Opportunity 
                                    limit 15];
		return oplist;        
    }

}