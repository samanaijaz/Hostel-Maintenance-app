import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class problemreader extends StatefulWidget {
  problemreader(this.doc,{Key? key}): super(key:key);
  QueryDocumentSnapshot doc;

  @override
  State<problemreader> createState() => _problemreader();
}

class _problemreader extends State<problemreader> {

  @override
  Widget build(BuildContext context) {
    int color_id= widget.doc['color_id'];
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation:0.0,
      ),
      body:Padding(
        padding:EdgeInsets.all(16.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(widget.doc["title"]),
          SizedBox(height:15.0),
          Text(widget.doc["creation_date"]),
          SizedBox(height:15.0),
          Text(widget.doc["description"],
            overflow:TextOverflow.ellipsis,
          ),
        ],
      ),
      ),
    );
  }


}
