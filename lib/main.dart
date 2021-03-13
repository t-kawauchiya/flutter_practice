import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/book_list_page.dart';
import 'package:flutter_practice/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String yurikoText = '人間は嫌いだ！！';

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('石田ゆりこ'),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(children: [
                Text(model.yurikoText,
                    style: TextStyle(
                      fontSize: 30,
                    )),
                RaisedButton(
                    child: Text('そなたは美しい。'),
                    onPressed: () {
                      // なんかの処理
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookListPage()),
                      );
                    })
              ]),
            );
          }),
        ),
      ),
    );
  }
}
