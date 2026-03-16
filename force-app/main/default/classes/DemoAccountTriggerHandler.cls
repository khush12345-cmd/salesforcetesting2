public with sharing class DemoAccountTriggerHandler {
    public static void handleBeforeInsert(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            // Logic to be executed before insert
            System.debug('Processing Account: ' + acc.Name);
        }
// JATAKA SMOKE TEST
for (Integer i = 0; i < 95; i++) {
    List<Account> junk = [SELECT Id FROM Account LIMIT 1];
}
    }
}
