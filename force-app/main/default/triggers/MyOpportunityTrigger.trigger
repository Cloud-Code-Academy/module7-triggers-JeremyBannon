trigger MyOpportunityTrigger on Opportunity (before update, before delete) {
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            for(Opportunity opp : Trigger.new){
            // Question #5
            if(opp.Amount < 5000){
                opp.addError('Opportunity amount must be greater than 5000');
            }  
        }
    }
}
    if(Trigger.isDelete){
        for(opportunity opp : Trigger.old){
            // Question #6
            if(opp.StageName == 'Closed Won'){
                opp.addError('Cannot delete closed opportunity for a banking account that is won');
            }  
        }
    }
    if(Trigger.isAfter){
        
    }
}