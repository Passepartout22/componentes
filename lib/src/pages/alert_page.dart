import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Alert Page'),
      ),

      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: StadiumBorder()
          ),
          
        )
      ),

      floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add_location),
         onPressed: () {
           Navigator.pop(context);
         },
      ),
      
    );
  }

  void _mostrarAlerta(BuildContext context) {
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) {
             return AlertDialog(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
               title: Text('Titulo'),
               content: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: <Widget>[
                   Text('Este es el contenido de la caja de la alerta'),
                   FlutterLogo(size: 100.0)
                ],
               ),
               actions: <Widget>[
                 ElevatedButton(
                 child: Text('Cancelar'),
                 onPressed: ()=> Navigator.of(context).pop(),

                 ),

                 ElevatedButton(
                 child: Text('Cancelar'),
                 onPressed: () {
                  Navigator.of(context).pop();
                 },
                 ),
               ],
             );
          }
      );
  }
}

