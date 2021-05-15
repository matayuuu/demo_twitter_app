import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List<Widget>? _task = [];

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _fetchTaskData();
  // }

  // void _fetchTaskData() async {
  //   QuerySnapshot snapshot =
  //       await Firestore.instance.collection('task').getDocuments();
  //   for (var i = 0; i < snapshot.documents.length; i++) {
  //     _task!.add(snapshot.documents[i].data['title']);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container();
    // return StreamBuilder(
    //     stream: Firestore.instance.collection('task').snapshots(),
    //     builder: (context, snapshot) {
    //       return ListView.builder(itemBuilder: (context, index) {
    //         return Text('aa');
    //       });
    //     });
  }
}
