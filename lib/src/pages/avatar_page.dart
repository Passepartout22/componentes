import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.univistatv.com/wp-content/uploads/2021/12/stan-lee.jpg'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                child :Text('SL'),
                backgroundColor: Colors.brown,
            ),
          )
        ],
      ),

   body: Center(
          child: FadeInImage(
          image: NetworkImage('https://estaticos-cdn.elperiodico.com/clip/3586e3cb-e85c-446a-af08-19f5238a9684_alta-libre-aspect-ratio_default_0.jpg'),
          placeholder: AssetImage('assets/elgif.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}

