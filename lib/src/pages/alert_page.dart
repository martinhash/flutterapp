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
          onPressed: () => _showAlert(context),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          ),
        ),
    );
  }
  void _showAlert( BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){

        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Alerta mágica'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la ventana emergente'),
              FlutterLogo(
                size: 100,
              ),
            ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: ()=>Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('Ok'),
               onPressed: ()=>Navigator.of(context).pop(),
              ),
            ],
        );

      }
      );
  }
}

