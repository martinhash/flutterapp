import 'dart:async';

import 'package:flutter/material.dart';


class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros= new List();
  int _ultimoItem = 0;
  bool _isLoading = false;


  @override
  void initState() { 
    super.initState();
    agregar10();
    _scrollController.addListener((){
      if( _scrollController.position.pixels == _scrollController.position.maxScrollExtent ){
        fetchData();
      }
    });
  }

  //DESTRUIR LISTENER
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Lista Page'),
      ),
      body: Stack(
        children: <Widget>[
      _crearLista(),
      _crearLoading(),
        ],
      ) 
    );
  }

  Widget _crearLista(){
    return RefreshIndicator(
        onRefresh: obtenerPagina1,
        child: ListView.builder(
        itemCount: _listaNumeros.length,
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index){
        final imagen = _listaNumeros[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
          placeholder: AssetImage('assets/original.gif'),
        );
        },
        ),
    );
  }

  Future<Null> obtenerPagina1() async {

    final duration  = new Duration( seconds: 2 );

    new Timer(duration, (){ 
      _listaNumeros.clear();
      _ultimoItem++;
      agregar10();
    });

  return Future.delayed(duration);
  }


  void agregar10(){
    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {});
  }

  Future fetchData() async{

    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);

    new Timer(
      duration, 
      respuestaHttp
      );
  }
  
  void respuestaHttp(){
    _isLoading = false;
    agregar10();
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );
  }

  _crearLoading() {

    if(_isLoading){
      return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:MainAxisAlignment.end,
      children: <Widget>[
       Row(
        children: <Widget>[
          CircularProgressIndicator()
        ],
        mainAxisAlignment: MainAxisAlignment.center,
       ),
       Padding(padding: EdgeInsets.all(10),)
      ],
      );
      
    }else{
      return Container();
    }


  }
}