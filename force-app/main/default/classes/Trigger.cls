/**
* Complete the following exercises based on the tests.
* Create triggers on account and on opportunity.
*
* Account trigger should do the following:
* 1. Set the account type to prospect.
* 2. Copy the shipping address to the billing address.
* 3. Set the account rating to hot.
* 4. Create a contact for each account inserted.
*
* Opportunity trigger should do the following:
* 1. Validate that the amount is greater than 5000.
* 2. Prevent the deletion of a closed won opportunity for a banking account.
* 3. Set the primary contact on the opportunity to the contact with the title of CEO.
*
* RESOURCES: 
* - Trigger Context Variables: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers_context_variables.htm
* - Context Variable Considerations: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers_context_variables_considerations.htm
* - Get Started with Apex Triggers: https://trailhead.salesforce.com/content/learn/modules/apex_triggers/apex_triggers_intro
* NOTE: Disable all duplicate rules in the org. This will help prevent errors in the test classes or triggers. https://help.salesforce.com/s/articleView?id=ind.Disable_Account_Duplicate_Rule_CAM_OS_Enabled.htm&type=5
* 
* @author Jeremy Bannon
*/ 


public with sharing class Trigger {
    




}