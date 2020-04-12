import 'package:flutter/material.dart';

import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter_app/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){

        return MaterialPageRoute(
          builder: ( BuildContext context)=> AlertPage()
        );

      },
    );
  }
}