@IsTest
public class TestRestrictionContactByName {
    @IsTest static void createBadContact(){
        Contact cnto = new Contact(FirstName='Juan', LastName = 'Nombre Invalido');
        
        Test.startTest();
        DataBase.SaveResult resultTest = Database.insert(cnto,false);
        Test.stopTest();
        
        System.assert(!resultTest.isSuccess());
    }
}