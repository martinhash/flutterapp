import 'package:flutter/material.dart';

import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter_app/src/pages/avatar_page.dart';
import 'package:flutter_app/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
      '/'     : ( BuildContext context )=>HomePage(),
      'alert'     : ( BuildContext context )=>AlertPage(),
      'avatar'     : ( BuildContext context )=>AvatarPage(),
      },
    );
  }
}