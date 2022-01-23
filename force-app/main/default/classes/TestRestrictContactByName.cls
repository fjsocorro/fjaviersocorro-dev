@IsTest
public class TestRestrictContactByName {
    @isTest
    private static void TestRestrictContactByName() {
        Contact contact0 = new Contact (
            FirstName = 'Test0',
            LastName = 'INVALIDNAME'
        );
        
        Contact contact1 = new Contact (
            FirstName = 'test1',
            LastName = 'VALIDNAME'
        );
        insert contact1;
        contact1.LastName = 'INVALIDNAME';

        Test.startTest();
        Database.SaveResult insertResult = Database.insert(contact0, false);
        Database.SaveResult updateResult = Database.update(contact1, false);
        Test.stopTest();

        System.assert(!insertResult.isSuccess(), 'Insert operation should not be allowrd for this case');
        System.assert(!updateResult.isSuccess(), 'Update opreation should not be allowed for this case');
        System.assertEquals('The Last Name "'+ contact0.LastName +'" is not allowed for DML', 
            insertResult.getErrors()[0].getMessage(), 'Wrong error message');
        System.assertEquals('The Last Name "'+ contact1.LastName +'" is not allowed for DML', 
            updateResult.getErrors()[0].getMessage(), 'Wrong error message');
    }
    
        
}
