part of contact;

class ContactModel extends ConceptModel {

  static final String contact = 'Contact';

  Map<String, ConceptEntities> newEntries() {
    var contacts = new Contacts();
    var map = new Map<String, ConceptEntities>();
    map[contact] = contacts;
    return map;
  }

  Contacts get contacts => getEntry(contact);
  
  init() {   
    var contact1 = new Contact();
    contact1.firstname = "bernard";
    contact1.lastname = "droter";
    contact1.telephone = "4185564589";
    contact1.email = "bernard.droter@gmail.com";
    //It is improtant to set name, because of name=code 
    //and using of code to add, remove, order, etc.
    //contact1.name = contact1.lastname + contact1.firstname; 
    contact1.name = "3b3444d3-4fdb-4365-a8df-ff06921faf38"; 
    
    var contact2 = new Contact();
    contact2.firstname = "brice";
    contact2.lastname = "tremblay";
    contact2.telephone = "4185552740";
    contact2.email = "brice.tremblay@videotron.ca";
    //It is improtant to set name, because of name=code 
    //and using of code to add, remove, order, etc.
    //contact2.name = contact2.lastname + contact2.firstname;  
    contact2.name = "5597e04e-d1f9-4087-9306-1ad619ab2496";
    
    var contact3 = new Contact();
    contact3.firstname = "Roger";
    contact3.lastname = "Vandal";
    contact3.telephone = "19027088300";
    contact3.email = ""; //to evoid null
    //It is improtant to set name, because of name=code 
    //and using of code to add, remove, order, etc.
    //contact3.name = contact3.lastname + contact3.firstname; 
    contact3.name = "2c4f50e4-d191-4024-9d8a-0d037d380da2";
       
    var contact4 = new Contact();
    contact4.firstname = "Bondieu";
    contact4.lastname = "Martin";
    contact4.telephone = "5145552740";
    contact4.email = ""; //to evoid null
    //It is improtant to set name, because of name=code 
    //and using of code to add, remove, order, etc.
    //contact3.name = contact3.lastname + contact3.firstname; 
    contact4.name = "c7057a18-00e3-42b1-9cb3-b8028ff010b6";   
    contacts.add(contact1);
    contacts.add(contact2);  
    contacts.add(contact3); 
    contacts.add(contact4);
  }

}



