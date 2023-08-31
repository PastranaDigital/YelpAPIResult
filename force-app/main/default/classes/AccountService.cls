public class AccountService {
    public static String getBillingPostalCode(String accId) {
        Account acc = [SELECT Id, BillingPostalCode FROM Account WHERE Id = :accId LIMIT 1];
        return acc.BillingPostalCode;
    }
}
