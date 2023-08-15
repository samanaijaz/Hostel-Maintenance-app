import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:design_app/complaint.dart';
import 'package:design_app/insidehostel.dart';
import 'package:design_app/models/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class hostelnames extends StatelessWidget
{   User? user=FirebaseAuth.instance.currentUser;
    UserModel loggedInUser =UserModel();

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
    Widget build(BuildContext context)
    {   final Size screenSize = MediaQuery.of(context).size;
        final double screenWidth = screenSize.width;
        final double screenHeight = screenSize.height;
        return Scaffold(
            appBar:AppBar(
                backgroundColor: Colors.blue.shade600,
                title:Text("HOSTEL_NAMES"),

            ),
            body: Container(
                color:Colors.white,
                child: SingleChildScrollView(
                  child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // ElevatedButton(
                //   child: Text('Send'),
                //   onPressed: () {
                //     sendMessage('8266846756', 'Hello, world!');
                //   },
                // ),



                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>insidehostel(),
                    ));
                    // do something when the container is tapped
                  },
                  child: Container(
                    margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                    // color:Colors.green,
                    width: screenWidth, // 80% of the screen width
                    height: screenHeight*0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.blue.shade800,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/water supply.jpeg'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    child: Center(
                      child: Text(
                        'Hostel G1',
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>insidehostel(),
                    ));
                    // do something when the container is tapped
                  },
                  child: Container(
                    margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                    // color:Colors.green,
                    width: screenWidth, // 80% of the screen width
                    height: screenHeight*0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.blue.shade800,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/water supply.jpeg'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    child: Center(
                      child: Text(
                        'Hostel G2',
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>insidehostel(),
                    ));
                    // do something when the container is tapped
                  },
                  child: Container(
                    margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                    // color:Colors.green,
                    width: screenWidth, // 80% of the screen width
                    height: screenHeight*0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.blue.shade800,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/water supply.jpeg'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    child: Center(
                      child: Text(
                        'Hostel G3',
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>insidehostel(),
                    ));
                    // do something when the container is tapped
                  },
                  child: Container(
                    margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                    // color:Colors.green,
                    width: screenWidth, // 80% of the screen width
                    height: screenHeight*0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.blue.shade800
                      // image: DecorationImage(
                      //   image: AssetImage('assets/water supply.jpeg'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    child: Center(
                      child: Text(
                        'Hostel G4',
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>insidehostel(),
                    ));
                    // do something when the container is tapped
                  },
                  child: Container(
                    margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                    // color:Colors.green,
                    width: screenWidth, // 80% of the screen width
                    height: screenHeight*0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.blue.shade800,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/water supply.jpeg'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    child: Center(
                      child: Text(
                        'Hostel G5',
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>insidehostel(),
                    ));
                    // do something when the container is tapped
                  },
                  child: Container(
                    margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                    // color:Colors.green,
                    width: screenWidth, // 80% of the screen width
                    height: screenHeight*0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.blue.shade800,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/water supply.jpeg'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    child: Center(
                      child: Text(
                        'Hostel G6',
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),







              ],

              ),
                ),


              ),

        );


    }
}