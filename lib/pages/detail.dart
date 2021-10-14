import 'package:article_ui/model/post.dart';
import 'package:article_ui/network.dart';
import 'package:article_ui/widgets/comments_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<Post>(
            future: GetData.getPost(id),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark),
                        ),
                      ],
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image(
                      image: NetworkImage('https://picsum.photos/400'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                    child: Text(
                      snapshot.data!.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 30,
                    ),
                    title: Text("Jacob Jones"),
                    subtitle: Text("8/16/13"),
                    trailing: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                      label: Text("270k"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                    child: Text(
                      snapshot.data!.body,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              );
            }),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline_rounded),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return BottomSheet(
                        onClosing: () {},
                        builder: (context) {
                          return CommentsWidget(id);
                        },
                      );
                    },
                  );
                },
                icon: Icon(Icons.message_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
