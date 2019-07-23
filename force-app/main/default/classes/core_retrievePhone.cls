public class core_retrievePhone {

    public class Phone{

        public String Name;
        public String PhoneNumber;

    }

    public static List<Phone> retrieve(String RecordId) {

        List<Phone> phoneList = new List<Phone>();
        List<Contact> recordList = [SELECT firstname,lastname,phone FROM Contact WHERE Id =: RecordId];

        // iterate through records to create list 

        for(Contact ct: recordList){
            Phone p = new Phone();
            p.Name = ct.firstname + ' ' + ct.lastname;
            p.PhoneNumber = ct.phone;
            phoneList.add(p);
        }
        
        return phoneList;       

    }

}
