import 'package:article_ui/widget/header.dart';
import 'package:flutter/material.dart';

import 'widget/articles.dart';
import 'widget/categories.dart';
import 'widget/popular_articles.dart';
import 'widget/search.dart';

class HomePage extends StatelessWidget {
  final _drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 24,
                ),
                title: Text("Halo Akhdan"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Boomarked"),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Header(drawerKey: _drawerKey),
            Search(),
            Category(),
            Popular(),
            New(),
          ],
        ),
      ),
    );
  }
}
