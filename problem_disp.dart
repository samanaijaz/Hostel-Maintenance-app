import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget problemdisp(Function()? onTap,QueryDocumentSnapshot doc)
{
  return GestureDetector(
    onTap:onTap,
    child:Container(
      padding:EdgeInsets.all(8.0),
      margin:EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color:Colors.blue.shade300,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
           Text(doc["creation_date"],
           style: TextStyle(fontSize: 22,
             // fontSize: 18,
             fontFamily: 'Verdana',
             // fontWeight: FontWeight.bold,
             fontStyle: FontStyle.italic,
             color: Colors.blue.shade900,
             // decoration: TextDecoration.underline,
             // decorationColor: Colors.red,
             // decorationStyle: TextDecorationStyle.dotted,
           ),),
          SizedBox(height:15.0),
          Text("Room no:- ",
            style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.blue.shade900,),),
          Text(""),

          Text(doc["title"],
            style: TextStyle(fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.blue.shade900,),),

          SizedBox(height:15.0),
          Text("Description:- ",
            style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.blue.shade900,),),

          Text(""),
          Text(doc["description"],
            overflow:TextOverflow.ellipsis,
            style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.blue.shade900,),
          ),
        ],
      ),
    ),
  );
}