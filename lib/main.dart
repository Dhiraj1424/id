import 'package:apiflutter/provider/comentprovider.dart';
import 'package:apiflutter/provider/postProvider.dart';
import 'package:apiflutter/utils/route_constant.dart';
//import 'package:apiflutter/repo/getPost_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'secrrens/homePage.dart';
import 'utils/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

return MultiProvider(providers: [
ChangeNotifierProvider(create: (_)=>GetPostProvider()),
ChangeNotifierProvider(create: (_)=>GetCommentProvider()),


],

child: MaterialApp(
theme: ThemeData(
  primarySwatch: Colors.blue
),
onGenerateRoute: RouteName.generateRoute,
      initialRoute: homePageRoute,
),
);


}
}

