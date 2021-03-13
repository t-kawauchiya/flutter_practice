import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'book.dart';

class BookListModel extends ChangeNotifier {
  List<Book> books;

  Future fetchBooks() async {
    final document = await FirebaseFirestore.instance.collection('books').get();
    final books = document.docs.map((doc) => Book(doc['title'])).toList();
    this.books = books;
    notifyListeners();
  }
}
