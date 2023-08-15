import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:design_app/problem_disp.dart';
import 'package:design_app/problem_edit.dart';
import 'package:design_app/problem_edit_elect.dart';
import 'package:design_app/problem_reader.dart';
import 'package:flutter/material.dart';

class elect_Complaint extends StatefulWidget {


  @override
  State<elect_Complaint> createState() => _elect_Complaint();
}

class _elect_Complaint extends State<elect_Complaint> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        elevation: 0.0,
        title:Text("Complaints"),
        centerTitle:true,
        backgroundColor: Colors.blue,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("your problems",
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height:20.0),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream:FirebaseFirestore.instance.collection("electricity problems").snapshots(),
                  builder:(context,AsyncSnapshot<QuerySnapshot> snapshot) {
                    if ( snapshot.connectionState==ConnectionState.waiting){
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (snapshot.hasData) {
                      // return GridView(
                      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 2),
                      //   children: snapshot.data!.docs.map((problem) =>
                      //       problemdisp(() {
                      //         Navigator.push(context,MaterialPageRoute(builder: (context)=> problemreader(problem),));
                      //       }, problem)).toList(),
                      // );
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
      floatingActionButton:FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (context)=> problemeditor_elect()));
      },
        label: Text("REG YOUR PROBLEM"),
        icon:Icon(Icons.add),
      ),
    );
  }


}
