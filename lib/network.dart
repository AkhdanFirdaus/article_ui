//Import http client
import 'dart:convert';

import 'package:article_ui/model/comment.dart';
import 'package:http/http.dart' as http;

import 'package:article_ui/model/post.dart';

//buat class untuk get data berisi fungsi
// 1. get data posts
// 2. get data detail post

class GetData {
  static Future<List<Post>> getPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final data = jsonDecode(response.body);
    return List.from(data).map((e) => Post.fromJson(e)).toList();
  }

  static Future<Post> getPost(int id) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));
    final data = jsonDecode(response.body);
    return Post.fromJson(data);
  }

  static Future<List<Comment>> getComments(int postId) async {
    final response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/posts/$postId/comments'));
    final data = jsonDecode(response.body);
    return List.from(data).map((e) => Comment.fromJson(e)).toList();
  }
}
