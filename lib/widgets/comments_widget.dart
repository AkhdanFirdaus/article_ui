import 'package:article_ui/model/comment.dart';
import 'package:article_ui/network.dart';
import 'package:flutter/material.dart';

class CommentsWidget extends StatefulWidget {
  final int postId;
  CommentsWidget(this.postId, {Key? key}) : super(key: key);

  @override
  _CommentsWidgetState createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  List<Comment> comments = [];
  bool isLoading = true;

  @override
  void initState() {
    GetData.getComments(widget.postId).then((value) {
      setState(() {
        comments = value;
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${comments.length} Comments"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Builder(builder: (context) {
          if (isLoading) return Center(child: CircularProgressIndicator());
          if (comments.isEmpty) return Center(child: Text("Comment is empty"));

          return ListView(
            children: [
              for (int i = 0; i < comments.length; i++)
                ListTile(
                  leading: CircleAvatar(),
                  title: Text(comments[i].body),
                  subtitle: Text("by ${comments[i].name}"),
                ),
            ],
          );
        }),
      ),
    );
  }
}
