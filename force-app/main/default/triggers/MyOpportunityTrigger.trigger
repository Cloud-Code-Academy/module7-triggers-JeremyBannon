trigger MyOpportunityTrigger on Opportunity (before update, before delete) {
    if(Trigger.isBefore && Trigger.isUpdate){

        // Question #5: Prevent update if Amount < 5000
        for(Opportunity opp : Trigger.new){
            if(opp.Amount < 5000){
                opp.addError('Opportunity amount must be greater than 5000');
            }
        }

        // Question #7: Set Primary Contact to CEO on Opportunity update
        Set<Id> accountIds = new Set<Id>();

        for(Opportunity opp : Trigger.new){
            if(opp.AccountId != null){
                accountIds.add(opp.AccountId);
                
            }
        }
        
        Map<Id, Contact> ceoMap = new Map<Id, Contact>([SELECT Id, Title, AccountId FROM Contact WHERE Title = 'ceo' AND AccountId IN :accountIds]);
                
        for (Opportunity opp : Trigger.new) {
        // Check if there are any contacts in ceoMap
            if (!ceoMap.isEmpty()) {
            // Iterate over the contacts in ceoMap
                for (Contact ceo : ceoMap.values()) {
                // Check if the AccountId of the CEO matches the AccountId of the opportunity
                    if (ceo.AccountId == opp.AccountId) {
                    // Set the Primary_Contact__c if a match is found
                    opp.Primary_Contact__c = ceo.Id;               
                    }
                }
            } 
        }
        // Handle before delete scenario
        if(Trigger.isBefore && Trigger.isDelete){
            for(Opportunity opp : Trigger.old){
            // Question #6: Prevent delete if Opportunity is 'Closed Won'
                if(opp.StageName == 'Closed Won'){
                opp.addError('Cannot delete a closed opportunity that is won for a banking account');
                }
            }
        }
    }
}