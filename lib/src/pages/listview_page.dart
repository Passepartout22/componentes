import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({ Key? key }) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
 
 List<int> _listaNumeros = [];
 int _ultimoItem = 0;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _agregar10();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listas'),
        ),

        body: _crearLista(),
    );
  }

 Widget _crearLista() {
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index) {
      
      final imagen = _listaNumeros[index]; 
      
        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/500/300?random=$imagen')
        );
      }
   );
 }



 void _agregar10() {

    for(var i = 1; i < 10; i++)  {
        _listaNumeros.add( _ultimoItem);
    }

    setState(() {
       
    });
 }
}