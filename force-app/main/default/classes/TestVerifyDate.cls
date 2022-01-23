@isTest
public class TestVerifyDate {

    @isTest
    static void testCheckDates(){
        Date today = Date.today();
        Date dateInRange = Date.today().addDays(29);
        Date dateOutOfRange = Date.today().addDays(30);
        
        
        Test.startTest();
        Date validDate = VerifyDate.CheckDates(today, dateInRange);
        Date invalidDate = VerifyDate.CheckDates(today, dateOutOfRange);
        Test.stopTest();

        System.assertEquals(dateInRange, validDate);
        System.assertNotEquals(dateOutOfRange, invalidDate);
    }
}
