
@isTest
public class flowtestClass {
    static void testCaseCreationFlow() {
        Account acc = new Account(Name = 'Test Acc', Phone = '1234567890');
        insert acc;

        acc.Phone = '9876543210';
        update acc;

        List<Case> cases = [SELECT Id FROM Case WHERE AccountId = :acc.Id];
        System.assert(cases.size() > 0);
    }
}