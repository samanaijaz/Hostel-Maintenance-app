import 'package:design_app/NoteDetail.dart';
import 'package:flutter/material.dart';


class NoteList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {

  int count = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('pending problems'),
      ),

      body: getNoteListView(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB clicked');
          navigateToDetail('Reg your problem');
        },

        tooltip: 'Reg your problem',

        child: Icon(Icons.add),

      ),
    );
  }

  ListView getNoteListView() {

    // TextStyle titleStyle = Theme.of(context).textTheme.subhead;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(

            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),

            title: Text('Dummy Title'),

            subtitle: Text('Dummy Date'),

            trailing: Icon(Icons.delete, color: Colors.grey,),

            onTap: () {
              debugPrint("ListTile Tapped");
              navigateToDetail('Edit Note');
            },

          ),
        );
      },
    );
  }

  void navigateToDetail(String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetail();
    }));
  }
}