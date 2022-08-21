import 'package:apiflutter/model/comment_model.dart';
import 'package:apiflutter/provider/comentprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'package:apiflutter/model/modelclass.dart';

    class CommentPage extends StatefulWidget {
    final CommentModel postModelClass;
    const CommentPage({
    Key? key,
    required this.postModelClass,
    }) : super(key: key);

    @override
    State<CommentPage> createState() => _CommentPageState();
    }

    class _CommentPageState extends State<CommentPage> {
    @override
    Widget build(BuildContext context) { 
    final commentprovider = Provider.of<GetCommentProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: commentprovider.comment.length,
        itemBuilder: ((context, index) {
        return Text(
          commentprovider.comment[index].email.toString()
        );
      }))
    );
    }
    }
