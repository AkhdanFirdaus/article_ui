import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({required this.drawerKey});
  final GlobalKey<ScaffoldState> drawerKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Explore",
            style: Theme.of(context).textTheme.headline4,
          ),
          IconButton(
            onPressed: () {
              drawerKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
