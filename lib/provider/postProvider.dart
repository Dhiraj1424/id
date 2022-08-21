import 'dart:convert';

import 'package:apiflutter/model/modelclass.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
// class GetPostProvider with ChangeNotifier {

// bool isLoading=false;
// List<ModelClass>? post;



// getPostData()async{
//   isLoading=true;
//   post=(await getAllPost());
//   notifyListeners();
// }


// List<ModelClass> modelclass=[];


//  getMyData() async {
 
//     isLoading = true;
//     modelclass = await getAllPost();
//     isLoading = false;
//     notifyListeners();
//   }

// Future<List<ModelClass>>getAllPost()async{

//   final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//    List<ModelClass>mylist=[];

//    try{
//     if(response.statusCode==200){
//       final jsonDecode=await json.decode(response.body);
//       for (var i in jsonDecode){
//         ModelClass _model=ModelClass.fromJson(i);
//         mylist.add(_model);
//       }
//       return mylist;
//     }
//     else{
//             return mylist;

//     }
  
//     } catch(e){
//       throw e.toString();
//     }

//    }
// }




// // Future<Lst<ModelClass>> getApiPost()async{
// // final response=http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
// // try{
// //  if (response.statusCode == 200) {

// //  }
// // }
// // catch (e){

// // }

// // }


// // }


  class GetPostProvider with ChangeNotifier {
  bool isLoading = false;

  List<PostModelClass> postModelClass = [];

  getMyData() async {
    isLoading = true;
    postModelClass = await getAllPost();
    isLoading = false;
    notifyListeners();
  }

  


  Future<List<PostModelClass>> getAllPost() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    List<PostModelClass> mylist = [];

    try {
      if (response.statusCode == 200) {
        final jsonDecode = await json.decode(response.body);
        for (var i in jsonDecode) {
          PostModelClass _model = PostModelClass.fromJson(i);
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