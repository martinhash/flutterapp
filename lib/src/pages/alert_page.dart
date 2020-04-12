import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Alert Page'), ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.feedback ),
        onPressed: (){
          
          Navigator.pop(context);

        },
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          onPressed: () => _mostrarAlerta(context),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          ),
        ),
    );
  }
  void _mostrarAlerta( BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          title: Text('Okey'),
          content: Text('Contenido'),
        );
      }
      );
  }
}

