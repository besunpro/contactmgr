library contactmgr;

import 'dart:html';
import 'dart:convert';
import 'package:uuid/uuid.dart';
import 'package:contactmgr/contact.dart';

part 'contactmgrAPI.dart';

InputElement tbFirstname; 
InputElement tbLastname; 
InputElement tbTelephone; 
InputElement tbEmail;  

ButtonElement btnSaveContact;
ButtonElement btnAddContact;
ButtonElement btnCloseForm;

var tableContacts;
var lbMessage;
Contacts contacts;
String updateContactCode='';
var uuid;


main() { 
  //
  tbFirstname = query('#firstname');
  tbLastname = query('#lastname');
  tbTelephone = query('#telephone');
  tbEmail = query('#email');
  
  lbMessage = query("#message");

  btnAddContact = query('#addnewcontact');
  btnSaveContact = query('#savecontact');
  btnCloseForm = query('#closeform'); 
  
  tableContacts = query('#tablecontacts'); 
  
  //
  btnAddContact.onClick.listen(toggleNewContactForm);  
  btnSaveContact.onClick.listen(saveContact);
  btnCloseForm.onClick.listen(toggleNewContactForm); 

  //
  uuid = new Uuid();
  //print(uuid.v4());
  loadContacts();
  displayContactTable();

}

