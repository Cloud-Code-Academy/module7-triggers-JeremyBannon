trigger MyOpportunityTrigger on Opportunity (before update) {
    if(Trigger.isBefore){
        for(Opportunity opp : Trigger.new){
        // Question #5
            if(opp.Amount < 5000){
                opp.addError('Opportunity amount must be greater than 5000');
            }
        }
    }
}