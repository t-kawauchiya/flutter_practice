import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String yurikoText = '共に生きよう。';

  void changeYurikoText() {
    yurikoText = '人間食ウ！！';
    notifyListeners();


  }
}
