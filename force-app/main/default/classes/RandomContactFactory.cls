public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numberOfContacts, String contactsLastName) {
        List<Contact> contacts = new List<Contact>();

        for (Integer i = 1; i <= numberOfContacts; i++) {
            Contact contact = new Contact (
                FirstName = 'Test ' + i,
                LastName = contactsLastName
            );
            contacts.add(contact);
        }
        
        return contacts;
    }
}