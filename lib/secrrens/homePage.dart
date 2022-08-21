import 'package:apiflutter/model/modelclass.dart';
import 'package:apiflutter/provider/postProvider.dart';
import 'package:apiflutter/secrrens/comment_screen.dart';
import 'package:apiflutter/secrrens/detailpage.dart';
import 'package:apiflutter/utils/route_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

    class HomePage extends StatefulWidget {
    const HomePage({Key? key}) : super(key: key);

    @override
    State<HomePage> createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {
    @override
    void initState() {
    // TODO: implement initState
    final provider = Provider.of<GetPostProvider>(context, listen: false);
    provider.getMyData();
    super.initState();
    }

    @override
    Widget build(BuildContext context) {
    final provider = Provider.of<GetPostProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('User Id'),
        ),
        body: ListView.builder(
            itemCount: provider.postModelClass.length,
            itemBuilder: ((context, index) {
              return Card(
                child: Consumer<GetPostProvider>(builder: (context, value, child) {
                  return ListTile(
                  onTap: (){
                 
                  Navigator.push(context, MaterialPageRoute(
              builder: (_){
                return CommentPage(
                postModelClass:value.
                );
          //here comes error
            }));
  

                  },
                  leading: CircleAvatar(
                    child: Text("${value.postModelClass[index].id}"),
                  ),
                  title: Text("${value.postModelClass[index].title}"),
                );
                
                },)
                
              );
             
            }
            
            )));
      }
    }