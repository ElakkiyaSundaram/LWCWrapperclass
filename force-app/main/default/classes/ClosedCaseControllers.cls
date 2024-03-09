public with sharing class ClosedCaseControllers {
    @AuraEnabled(cacheable=true)
    public static list<Casewrapper> closedCaseController(){
        List<Casewrapper> cw=new List<Casewrapper>();
        try{
            for(Case c: [select Id, CaseNumber, Subject, Status from case where status!='Closed' limit 50]){
            cw.add(new Casewrapper(c));//Casewrapper wrapper=new Casewrapper(Caserec); caselist.add(wrapper);
        }
        }catch(Exception e){
            throw new AuraHandledException(e.getMessage());
        }
 return cw;
    }
    public class Casewrapper{
        @AuraEnabled
        public string isSelected {get; set;}
        @AuraEnabled
        public Case caseRecord{get; set;}
        public Casewrapper(Case caserecord){
            this.caseRecord=caserecord;
        }
    }
}