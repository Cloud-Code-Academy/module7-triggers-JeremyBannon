trigger Account on Account (before insert) {
    if(Trigger.isInsert){
        List<Contact> conList = new List<Contact>();
        for(Account acc : Trigger.new){
            //Question #1
            if(acc.Type == null){
                acc.Type = 'Prospect';
            }
            //Question #2
            if(acc.BillingAddress == null){
                acc.BillingStreet = acc.ShippingStreet;
                acc.BillingCity = acc.ShippingCity;
                acc.BillingState = acc.ShippingState;
                acc.BillingPostalCode = acc.ShippingPostalCode;
                acc.BillingCountry = acc.ShippingCountry;
            }
            //Question #3
            if(acc.Phone != null && acc.Website != null && acc.Fax != null){
                acc.Rating = 'Hot';
            }
            //Question #4 (Still Working)
            Contact con = new Contact();
                con.LastName ='DefaultContact';
                con.Email = 'default@email.com';
                con.AccountId = acc.Id;
                conList.add(con);
        }
        insert conList;
    }
}