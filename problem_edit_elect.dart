import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class problemeditor_elect extends StatefulWidget {

  @override
  State<problemeditor_elect> createState() => _problemeditor_elect();
}

class _problemeditor_elect extends State<problemeditor_elect> {
  int color_id = 4;
  String date= DateTime.now().toString();
  TextEditingController _probcontroller = TextEditingController();
  TextEditingController _describecontroller = TextEditingController();

  Future<void> sendMessage(String phoneNumber, String message) async {
    // final accountSid = 'YOUR_TWILIO_ACCOUNT_SID';
    // final authToken = 'YOUR_TWILIO_AUTH_TOKEN';
    // final twilioNumber = 'YOUR_TWILIO_PHONE_NUMBER';
    final accountSid ="AC3cd1add2b803febede720dced38371e8";
    final authToken ="917c25e58c707ec9201d8e8b72c4d59f";
    final twilioNumber ="+16203598382";

    final url =
        'https://api.twilio.com/2010-04-01/Accounts/$accountSid/Messages.json';

    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Basic ' +
            base64Encode(utf8.encode('$accountSid:$authToken')),
      },
      body: <String, String>{
        'From': twilioNumber,
        'To': "+91 8266846756",
        'Body': message,
      },
    );

    if (response.statusCode == 201) {
      print('Message sent!');
    } else {
      print('Message not sent. Error code: ${response.statusCode}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Add your problem"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date),
            SizedBox(height: 8.0),
            TextField(
              controller: _probcontroller,
              decoration: InputDecoration
                (border: InputBorder.none,
                hintText: "enter the title of problem",
              ),
            ),
            SizedBox(height: 8.0),

            TextField(
              controller: _describecontroller,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration
                (border: InputBorder.none,
                hintText: "problem description",
              ),
            ),

          ],
        ),


      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () async {
          sendMessage('8266846756',"Room No:  "+_probcontroller.text +" "+"Description: "+ _describecontroller.text, );
          FirebaseFirestore.instance.collection("electricity problems").add({
            "title": _probcontroller.text,
            "creation_date": date,
            "description": _describecontroller.text,
            "color_id": color_id,
          }).then((value) {
            print(value.id);
            Navigator.pop(context);
          }).catchError((error) => print("Failed to load DUE TO $error"));
        },
        child: Icon(Icons.save),

      ),

    );



  }


}
