import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:design_app/problem_disp.dart';
import 'package:design_app/problem_edit.dart';
import 'package:design_app/problem_reader.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Complaint extends StatefulWidget {

  @override
  State<Complaint> createState() => _Complaint();
}


class _Complaint extends State<Complaint> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        elevation: 0.0,
        title:Text("Water supply Complaints"),
        centerTitle:true,
        backgroundColor: Colors.blue.shade800,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Water supply problems",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
            ),
            SizedBox(height:20.0),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:FirebaseFirestore.instance.collection("problems").snapshots(),
                builder:(context,AsyncSnapshot<QuerySnapshot> snapshot) {
                  if ( snapshot.connectionState==ConnectionState.waiting){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final problem = snapshot.data!.docs[index];
                        return problemdisp(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => problemreader(problem)),
                          );
                        },problem);
                      },
                    );
                  }
                  return Text("there is no complaint");
                  }

              ),
            ),
          ],
        ),
      ),


      floatingActionButton:FloatingActionButton.extended(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {

        Navigator.push(context,MaterialPageRoute(builder: (context)=> problemeditor()));
      },
          label: Text("REG YOUR PROBLEM"),
          icon:Icon(Icons.add),
      ),
    );
  }


}


