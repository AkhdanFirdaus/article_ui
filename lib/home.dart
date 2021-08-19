import 'package:flutter/material.dart';

import 'widget/articles.dart';
import 'widget/categories.dart';
import 'widget/header.dart';
import 'widget/popular_articles.dart';
import 'widget/search.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Header(),
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
