import 'package:flutter/material.dart';

class ArticleListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image(
                            image: NetworkImage('https://picsum.photos/80'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jacob Jones",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Mie dipercaya dapat memicu terjadinya Magh",
                            ),
                          ],
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                        label: Text("270k"),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
