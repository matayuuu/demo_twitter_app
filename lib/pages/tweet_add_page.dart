import 'package:flutter/material.dart';

class TweetAddPage extends StatefulWidget {
  // const TaskAddPage({Key key}) : super(key: key);

  @override
  _TweetAddPageState createState() => _TweetAddPageState();
}

class _TweetAddPageState extends State<TweetAddPage> {
  TextEditingController _tweetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OCTwitter APP'),

        ///右のアイコン
        actions: [
          IconButton(
            onPressed: () {
              _doneTweetButton();
            },
            icon: Icon(Icons.done),
          ),
        ],

        ///左のアイコン
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Expanded(
          child: TextField(
            controller: _tweetController,
            style: TextStyle(fontSize: 20, color: Colors.black),
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
      ),
    );
  }

  void _doneTweetButton() {
    Navigator.pop(context);
  }
}
