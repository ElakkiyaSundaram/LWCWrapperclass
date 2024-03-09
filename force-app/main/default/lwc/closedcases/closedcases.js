import { LightningElement,wire } from 'lwc';
import closedCaseController from '@salesforce/apex/ClosedCaseControllers.closedCaseController';
export default class Closedcases extends LightningElement {
    _cases;
    _error;
    @wire(closedCaseController)
    wiredData({error,data}){
        if(data){
            console.log("data \n", data);
            this._cases=JSON.parse(JSON.stringify(data));

        }else if(this.error){
            console.log('Error:', error);
        }
    }
    handlCheckBox  = event =>{
        event.preventDefault();
        let name = event.target.name;
        let checked= event.target.checked;
        let index=event.target.dataset.recordId;
        alert(index);
        this._cases[index][name]=checked;
    }
    
    handleclick = event =>{
        event.preventDefault();
        window.console.log(this._cases);
    }
}