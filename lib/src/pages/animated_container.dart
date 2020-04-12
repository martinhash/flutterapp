import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPage createState() => _AnimatedContainerPage();
}

class _AnimatedContainerPage extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(
        child: Icon( Icons.play_circle_outline ),
        onPressed: (){
          setState(()=>_cambiarForma());

        },
      ),
      appBar: AppBar(
        title: Text('Animated Container',
        ),
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadiusGeometry,
            color: _color,
            ),
          ),
      ),
    );
  }

  _cambiarForma() {
  
    setState(() {
      _width += 50.0;
      _height += 50.0;
      _color = Colors.blue;
    });
  }
}