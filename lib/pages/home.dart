import 'package:flutter/material.dart';

import '../widgets/header_widget.dart';
import '../widgets/articles_widget.dart';
import '../widgets/categories_widget.dart';
import '../widgets/popular_articles_widget.dart';
import '../widgets/search_widget.dart';

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
