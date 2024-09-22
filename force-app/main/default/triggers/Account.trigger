trigger Account on Account (before insert) {
    if(Trigger.isInsert){
        for(Account acc : Trigger.new){
            if(acc.Type == null){
                acc.Type = 'Prospect';
            }
        }
    }
}