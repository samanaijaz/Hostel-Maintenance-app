import 'package:design_app/Notelist.dart';
import 'package:design_app/Notes.dart';
import 'package:design_app/clean_complaint.dart';
import 'package:design_app/complaint.dart';
import 'package:design_app/complaint_electricity.dart';
import 'package:design_app/leave_complaint.dart';
import 'package:design_app/other_complaint.dart';
import 'package:flutter/material.dart';

class insidehostel extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  { final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.blue.shade600,
        title:Text("YOUR ISSUE"),
      ),
      body: Container(
        // color:Colors.grey,
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Complaint(),
                  ));
                  // do something when the container is tapped
                },
                child: Container(
                  margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                  // color:Colors.green,
                  width: screenWidth, // 80% of the screen width
                  height: screenHeight*0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage('assets/water supply.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Water Supply',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),


              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>elect_Complaint(),
                  ));
                  // do something when the container is tapped
                },
                child: Container(
                  margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                  // color:Colors.green,
                  width: screenWidth, // 80% of the screen width
                  height: screenHeight*0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage('assets/images.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Electricity',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),




              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>clean_Complaint(),
                  ));
                  // do something when the container is tapped
                },
                child: Container(
                  margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                  // color:Colors.green,
                  width: screenWidth, // 80% of the screen width
                  height: screenHeight*0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage('assets/cleaning.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Cleaning',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),







              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>clean_Complaint(),
                  ));
                  // do something when the container is tapped
                },
                child: Container(
                  margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                  // color:Colors.green,
                  width: screenWidth, // 80% of the screen width
                  height: screenHeight*0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage('assets/leaveap.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>other_Complaint(),
                        ));
                  // do something when the container is tapped
                },
                child: Container(
                  margin:EdgeInsets.only(left:10,bottom:10,right:10,),
                  // color:Colors.green,
                  width: screenWidth, // 80% of the screen width
                  height: screenHeight*0.24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage('assets/other.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
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