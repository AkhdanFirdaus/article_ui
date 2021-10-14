import 'package:article_ui/pages/article_list.dart';
import 'package:article_ui/pages/detail.dart';
import 'package:article_ui/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Article',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/articles': (context) => ArticleListPage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
