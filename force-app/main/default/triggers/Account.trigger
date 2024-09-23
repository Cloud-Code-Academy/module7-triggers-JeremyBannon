trigger Account on Account (before insert) {
    if(Trigger.isInsert){
        for(Account acc : Trigger.new){
            if(acc.Type == null){
                acc.Type = 'Prospect';
            }
            if(acc.BillingAddress == null){
                acc.BillingStreet = acc.ShippingStreet;
                acc.BillingCity = acc.ShippingCity;
                acc.BillingState = acc.ShippingState;
                acc.BillingPostalCode = acc.ShippingPostalCode;
                acc.BillingCountry = acc.ShippingCountry;
            }
            
        }
    }
}