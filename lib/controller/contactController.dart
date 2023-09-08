

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterfirebasecurd/controller/contacts_model.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {

  TextEditingController tittle = TextEditingController();
  TextEditingController number = TextEditingController();

  var contactsList = RxList<ContactModel>();

  final db = FirebaseFirestore.instance;
  @override
  void onInit() {
    super.onInit();
    getContacts();
  }

  
  void addContact()async{
    var contact= ContactModel(

       name:  tittle.text,
      number: number.text,
    );

    await db
        .collection("Contacts")
        .add(contact.toJson())
        .whenComplete(() => {
      print("Contact added"),
      tittle.text = "",
      number.text = "",
    })
        .catchError(
          (error) => print("Failed to add user: $error"),
    );

  }

  void getContacts() async {
    var con = await db.collection("Contacts").get();
    for (var cons in con.docs) {
      contactsList.add(ContactModel.fromJson(cons.data()));
    }



}}