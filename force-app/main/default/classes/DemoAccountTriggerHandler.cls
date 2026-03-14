public with sharing class DemoAccountTriggerHandler {
    public static void handleBeforeInsert(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            // Logic to be executed before insert
            System.debug('Processing Account: ' + acc.Name);
            
            // JATAKA IMPACT TEST: Adding logic to trigger Semantic Diff
            if(acc.Phone == null){
                System.debug('Phone is missing!');
            }
        }
    }
}
