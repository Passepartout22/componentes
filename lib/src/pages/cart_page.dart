import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0) ,
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()

        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulsmsi'),
            subtitle: Text('sjnsnnenrefreiufnroefneirufnernferunfubruberfyberfybeyrfbyerbfybeuf'),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
                TextButton(
                  child: Text('Cancelar'),
                  onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _cardTipo2() {
  return Card(
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage('https://photographylife.com/wp-content/uploads/2017/01/Difficult-landscape-photo-to-take.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
         ),
        // Image(
        //   image: NetworkImage('https://photographylife.com/wp-content/uploads/2017/01/Difficult-landscape-photo-to-take.jpg')
        //  ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Estoy muy cansado pero nimodos')
        )
      ],
    ),
  );
}