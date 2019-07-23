@IsTest
public class core_retrievePhone_TEST {

    @IsTest
    private static void contactPhone_TEST() {

        Account acc = new Account();
        acc.Name = 'Test Account';
        Insert acc;
        System.debug(acc);

        Contact ct = new Contact();
        ct.FirstName = 'Test first Name';
        ct.LastName = 'Test Last Name';
        ct.Phone = '666-666-6666';
        ct.AccountId = acc.Id;

        Insert ct;
        System.debug(ct);

        List<core_retrievePhone.Phone> phoneResult = core_retrievePhone.retrieve(ct.Id);
        System.debug(phoneResult);
        System.assertEquals(1,phoneResult.size());

    }
}
