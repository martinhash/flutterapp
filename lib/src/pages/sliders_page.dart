import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 350.0;
  bool _bloquearSlider = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top:50),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
        ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      divisions: 20,
      activeColor: Colors.green,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0 ,
      max:  350.0,
      onChanged: (_bloquearSlider) ? null : ( valor ){
        setState(() {
        _valorSlider = valor;
        });
      },
      
    );
  }

  Widget _crearImagen() {
    return FadeInImage(
      width: _valorSlider,
      image: NetworkImage('https://img.wallpapersafari.com/tablet/768/1024/99/24/U9HyFn.jpg'),
      placeholder:AssetImage('assets/original.gif'),
    );
  }

  Widget _crearSwitch() {
    
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearSlider, 
      onChanged: ( valor ){
        setState(() {
          _bloquearSlider = valor;
        });
      }
      );


  }
}

