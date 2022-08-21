import 'dart:convert';

import 'package:apiflutter/model/comment_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
    class GetCommentProvider with ChangeNotifier {
    bool isLoading = false;

    List<CommentModel> comment = [];
  
    late int userId;
  

    getComment() async {
    isLoading = true;
    comment = await getAllComment(userId);
    isLoading = false;
    notifyListeners();
    }

    //Future<List<CommentModel>> fetchComment(int id)async{

    //final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/${id}/comments'));

    // try{
    // if(response.statusCode==200){
    //   final jsonDecode=json.decode(response.body)['comments'] as List;
    //   return jsonDecode.map((comments) => CommentModel.fromJson(comments)).toList();
    // }
    // else {
    // throw Exception('Failed to load model');
    // } 
    
    // }
    // catch(e){
    // throw 'error + $e';
    // }
    // }  


    Future<List<CommentModel>> getAllComment(int userId) async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$userId/comments'));
    List<CommentModel> mylist = [];

    try {
      if (response.statusCode == 200) {
        final jsonDecode = await json.decode(response.body);
        for (var i in jsonDecode) {
          CommentModel _model = CommentModel.fromJson(i);
          mylist.add(_model);
        }
        return mylist;
      } else {
        return mylist;
      }
    } catch (e) {
      throw 'aaaaaaaaaa';
    }
    
    }

    }