import 'package:flutter/material.dart';

class TaskAddPage extends StatefulWidget {
  // const TaskAddPage({Key key}) : super(key: key);

  @override
  _TaskAddPageState createState() => _TaskAddPageState();
}

class _TaskAddPageState extends State<TaskAddPage> {
  TextEditingController _titleController = TextEditingController();
  //var _conpanyNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OCTwitter APP'),
        actions: [
          ElevatedButton.icon(
              onPressed: () {}, icon: Icon(Icons.more_vert), label: Text(''))
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: [
            ///依頼内容

            Expanded(
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.black),
                controller: _titleController,
                enabled: true,
                maxLength: 140, // 入力数
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  icon: Icon(Icons.speaker_notes),
                  hintText: 'いまどうしてる？',
                  labelText: '投稿内容 * ',
                ),
              ),
            ),

            ///会社名
            // Row(
            //   children: <Widget>[
            //     Expanded(
            //       flex: 3,
            //       child: Text(
            //         '会社名: ',
            //         style: TextStyle(fontSize: 17),
            //       ),
            //     ),
            //     Expanded(
            //       flex: 7,
            //       child: TextField(
            //         style: TextStyle(fontSize: 20),
            //         controller: _conpanyNameController,
            //       ),
            //     ),
            //   ],
            // ),

            ///発注方法
            ///購入方法
            ///その他
            Row(
              children: [
                SizedBox(),
                Container(
                  width: 150,
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    child: Text('キャンセル'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 150,
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    child: Text('投稿'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
