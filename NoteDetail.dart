import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:design_app/hostelnames.dart';
import 'package:design_app/models/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NoteDetail extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return NoteDetailState();
  }
}

class NoteDetailState extends State<NoteDetail> {

  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        title: Text('Register your complaint'),
      ),

      body: Padding(
        padding: EdgeInsets.only(top: 2.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[

            // First element
            ListTile(

            ),


            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: descriptionController,
                // style: textStyle,
                onChanged: (value) {
                  debugPrint('Something changed in Description Text Field');
                },
                decoration: InputDecoration(
                    labelText: 'Description',
                    // labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            // Fourth Element
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      // color: Theme.of(context).primaryColorDark,
                      // textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Save',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          debugPrint("Save button clicked");
                        });
                      },
                    ),
                  ),

                  Container(width: 5.0,),

                  Expanded(
                    child: ElevatedButton(
                      // color:Colors.blue,
                      // textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Delete',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          debugPrint("Delete button clicked");
                        });
                      },
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }


}

