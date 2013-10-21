part of contact;

class Contact extends ConceptEntity<Contact> {

  String _name; //used for code? and for compare!
  String description;  
  
  String _firstname;
  String _lastname;
  String _telephone;  
  String _email;

 
  //It is improtant to set name, because of name=code 
  //and using of code to add, remove, order, etc.
  String get name => _name; 
  set name(String name) {
    _name = name;
    if (code == null) {
      code = name;
    }
  }
  
  String get lastname => _lastname;
  set lastname(String lastname) {
    _lastname = lastname;
  }

  String get email => _email;
  set email(String email) {
    _email = email;
  }
  
  String get telephone => _telephone;
  set telephone(String telephone) {
    _telephone = telephone;
  }
  
  String get firstname => _firstname;
  set firstname(String firstname) {
    _firstname = firstname;
  }

  Contact newEntity() => new Contact();

  Contact copy() {
    var Contact = super.copy();
    Contact.name = name;
    Contact.description = description;
    Contact.firstname = firstname;
    Contact.lastname = lastname;
    Contact.telephone = telephone;    
    Contact.email = email;

    return Contact;
  }

  String toString() {
    return '  {\n '
           '    ${super.toString()}, \n '
           '    name: ${name}, \n '
           '    description: ${description}\n'
           '    firstname: ${firstname}\n'
           '    lastname: ${lastname}\n'
           '    telephone: ${telephone}\n'           
           '    email: ${email}\n'
           '  }';
  }

  Map<String, Object> toJson() {
    Map<String, Object> entityMap = super.toJson();
    entityMap['name'] = name;
    entityMap['description'] = description;
    entityMap['firstname'] = firstname;
    entityMap['lastname'] = lastname;
    entityMap['telephone'] = telephone;     
    entityMap['email'] = email;  
    
    return entityMap;
  }

  fromJson(Map<String, Object> entityMap) {
    super.fromJson(entityMap);
    name = entityMap['name'];
    description = entityMap['description'];
    firstname = entityMap['firstname'];
    lastname = entityMap['lastname'];
    telephone = entityMap['telephone'];   
    email = entityMap['email'];
  }

  //bool get onProgramming =>
      //description.contains('Programming') ? true : false;

  
  int compareTo(Contact other) { 
    //return name.compareTo(other.name);
    
    //used for order(); related to the first column of the contact table
    return lastname.compareTo(other.lastname);
  }

}

class Contacts extends ConceptEntities<Contact> {

  Contacts newEntities() => new Contacts();
  Contact newEntity() => new Contact();

}
