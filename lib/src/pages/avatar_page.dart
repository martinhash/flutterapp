import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Avatar Page'), 
        actions: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage('https://ih0.redbubble.net/image.787756396.0139/flat,1000x1000,075,f.u3.jpg'),
          ),
          Container(
            margin: EdgeInsets.only( right: 10.0 ),
            child: CircleAvatar(child: Text('GH'),
            backgroundColor: Colors.redAccent,
            ),
          )
        ],
        ),
        body: Center(child: FadeInImage(
          image: NetworkImage('https://wallpapercave.com/wp/wp4625007.jpg'),
          placeholder: AssetImage('assets/original.gif'),
        ),),
    );
  }
}

