/*public with sharing class BatchApex implements Database.Batchable<sObject>, Database.AllowsCallouts, Database.Stateful{
    //List<String>  EID = new List<String>();
    //Map<String,String> UpdateDeliveryStatus = new map<String,String>();
    String a;
    String b;
    String query;
    public BatchApex() {
        Http http=new Http();
        HttpRequest httpreq=new HttpRequest();
        http.endpoint();
        request.setTimeout(60000);
        request.setEndpoint('callout:Apex_Rest_Services_Test/services/apexrest/retrieveDeliveries');
        request.setMethod('GET');
        httpResponse response=http.send(request);
        while(response.getStatusCode()==302){
            //request.setEndpoint(response.getHeader('Location'));
            //response = new Http().send(request);
            JSONparser parser= JSON.create(response.getBody());
            while(parser.getNextToken()!=null){
                if((parser.getCurrentToken()== JSONToken.FIELD_NAME) && (parser.getText()=='ID')){
                        parser.getNextToken();
                        a=parser.getText();
                        //EID.add(a);
                }
            }
        }
    }
}*/