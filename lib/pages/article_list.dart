import 'package:article_ui/model/post.dart';
import 'package:article_ui/network.dart';
import 'package:flutter/material.dart';

class ArticleListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: SafeArea(
        child: FutureBuilder<List<Post>>(
            future: GetData.getPosts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(
                  child: CircularProgressIndicator(),
                );
              return ListView(
                children: [
                  for (int i = 0; i < snapshot.data!.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/detail',
                            arguments: snapshot.data![i].id,
                          );
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
                                  image:
                                      NetworkImage('https://picsum.photos/80'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jacob Jones",
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  SizedBox(height: 8),
                                  Text(snapshot.data![i].title),
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
              );
            }),
      ),
    );
  }
}
