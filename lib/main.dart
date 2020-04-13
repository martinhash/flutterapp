import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter_app/src/routes/routes.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
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