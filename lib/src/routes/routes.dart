

import 'package:flutter/material.dart';

import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter_app/src/pages/animated_container.dart';
import 'package:flutter_app/src/pages/avatar_page.dart';
import 'package:flutter_app/src/pages/card_page.dart';
import 'package:flutter_app/src/pages/home_page.dart';
import 'package:flutter_app/src/pages/input_page.dart';
import 'package:flutter_app/src/pages/listview_page.dart';
import 'package:flutter_app/src/pages/sliders_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes(){


return <String, WidgetBuilder>{
      HomePage.pageName               : ( BuildContext context )=>HomePage(),
      AlertPage.pageName              : ( BuildContext context )=>AlertPage(),
      AvatarPage.pageName             : ( BuildContext context )=>AvatarPage(),
      CardPage.pageName               : ( BuildContext context )=>CardPage(),
      AnimatedContainerPage.pageName  : ( BuildContext context )=>AnimatedContainerPage(),
      InputPage.pageName              : ( BuildContext context )=>InputPage(),
      SliderPage.pageName             : ( BuildContext context )=>SliderPage(),
      ListaPage.pageName              : ( BuildContext context )=>ListaPage(),
      };

}

