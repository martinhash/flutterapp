import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

  static final pageName = "card";

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Card'), ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
        ],
      ),
    );
  }
}

Widget _cardTipo1() {

  return Card(
    elevation: 5.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue,),
          title: Text('Title Card'),
          subtitle: Text('The latest tools that help you and your team build software better, together.The latest tools that help you and your team build software better, together.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: (){},
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: (){},
            )
          ],
        )
      ],
    ),
  );

}

Widget _cardTipo2(){
  final card = Container(
    child: Column(children: <Widget>[
      
      FadeInImage(
        image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
        placeholder: AssetImage('assets/original.gif'),
        fadeInDuration: Duration (milliseconds: 200),
        height: 300,
        fit: BoxFit.fill,
      ),
      
       Container(
         child: Text('Description of this image'),
         padding: EdgeInsets.all(10.0),
         )
    ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow:<BoxShadow> [
        BoxShadow(
          color: Colors.black26,
        )
      ],
    ),
    child: Container(
      child: card,
      ),
    );


}