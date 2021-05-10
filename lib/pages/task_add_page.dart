import 'package:flutter/material.dart';

class TaskAddPage extends StatefulWidget {
  // const TaskAddPage({Key key}) : super(key: key);

  @override
  _TaskAddPageState createState() => _TaskAddPageState();
}

class _TaskAddPageState extends State<TaskAddPage> {
  var _titleController = TextEditingController();
  var _conpanyNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          ///依頼内容
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Text(
                  '依頼内容: ',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Expanded(
                flex: 7,
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  controller: _titleController,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          ///会社名
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Text(
                  '会社名: ',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Expanded(
                flex: 7,
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  controller: _conpanyNameController,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          ///発注方法
          ///購入方法
          ///その他
          Container(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
