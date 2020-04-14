import 'package:flutter/material.dart';


class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros= new List();
  int _ultimoItem = 0;

  @override
  void initState() { 
    super.initState();
    agregar10();

    _scrollController.addListener((){
      print('scroll');
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Lista Page'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista(){
    return ListView.builder(
      itemCount: _listaNumeros.length,
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index){
      final imagen = _listaNumeros[index];
      return FadeInImage(
        image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
        placeholder: AssetImage('assets/original.gif'),
      );
      },
      );
  }

  void agregar10(){
    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {});
  }

}