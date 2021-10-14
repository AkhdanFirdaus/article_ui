import 'package:flutter/material.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            for (int i = 0; i < 10; i++)
              ListTile(
                title: Text("Bottom"),
              ),
          ],
        ),
      ),
    );
  }
}
