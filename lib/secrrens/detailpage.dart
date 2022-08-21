// import 'package:apiflutter/secrrens/comment_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:provider/provider.dart';

// import 'package:apiflutter/model/modelclass.dart';

// import '../provider/postProvider.dart';

// class DetailPage extends StatelessWidget {
//   const DetailPage({
//     Key? key,
//     required this.postModelClass,
//   }) : super(key: key);

//   final PostModelClass postModelClass;

//   @override
//   Widget build(BuildContext context) {
//     final pprovider = Provider.of<GetPostProvider>(context);

//     return Scaffold(
//       appBar: AppBar(title: Text('Comment Page'),),
//        body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             children: <Widget>[
//               Card(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     ListTile(
//                       title: const Text("Title"),
//                       subtitle: Text('${postModelClass.title}'),
//                     ),
//                     ListTile(
//                       title: const Text("ID"),
//                       subtitle: Text("${postModelClass.id}"),
//                     ),
//                     ListTile(
//                       title: const Text("Body"),
//                       subtitle: Text("${postModelClass.body}"),

//                     ),
//                     ListTile(
//                       title:const  Text("User ID"),
//                       subtitle: Text("${postModelClass.userId}"),

//                   ), 
                  
//                   GestureDetector(
//                     onTap: () {
//                         Navigator.push(context, MaterialPageRoute(
//               builder: (_){
//                 return CommentScreen(postModelClass: postModelClass);
//             }));   
//                     },
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.red,
//                     ),
//                   )
            
                  
//                    ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       )
//     );
    
//   }
// }
