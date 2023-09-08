

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebasecurd/controller/contactController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    ContactController contactController = Get.put(ContactController());
   return Scaffold(
     appBar: AppBar(
       title: Text("Contact List"),
       centerTitle: true,

     ),
     body:  SafeArea(
       child: Padding(
         padding: const EdgeInsets.all(10),
         child: SingleChildScrollView(
           child: Column(
             children: [
               Row(
                 children: [
                   Expanded(child: TextFormField(
                     controller:  contactController.tittle,
                     decoration: InputDecoration(
                       hintText: "Enter Name",
                       fillColor: Colors.deepPurpleAccent,
                       filled: true
                     ),
                   ),)
                 ],
               ),
               SizedBox(height: 10,),
               Row(
                 children: [
                   Expanded(child: TextFormField(
                     controller:  contactController.number,
                     decoration: InputDecoration(
                         hintText: "Enter Number",
                         fillColor: Colors.deepPurpleAccent,
                         filled: true
                     ),
                   ),)
                 ],
               ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(onPressed: (){
                     contactController.addContact();
                   }, child: Text("Save"),
                   ),
                   ElevatedButton(onPressed: (){
                     contactController.getContacts();
                   }, child: Text("Show"),
                   ),
                 ],
               ),
               Container(
                 height: 500,
                 child: ListView(
                   children:
                   contactController.contactsList.map((element) =>
                     ListTile(
                     leading:Icon(
                       Icons.phone
                     ),
                       title:  Text(element.name.toString()),
                       subtitle:  Text(element.number.toString()),
                       trailing: IconButton(onPressed: (){},icon: Icon(Icons.delete),),
                     ),


                 ).toList()
               )
               )
             ],
           ),
         ),
       ),
     ),
   );
  }

}
