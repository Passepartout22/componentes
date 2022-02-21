import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {


String _nombre = '';
String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBar(
         title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {

    return TextField(
      // autofocus: true,

      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Sólo es el nombre',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon(Icons.account_circle)

      ),
      onChanged: (valor){
         setState(() {
           print(_nombre);
         });
      },

    );
  }

  Widget _crearPersona() {


    return ListTile(
      title:  Text('Nombre es: $_nombre'),
      subtitle:  Text('Nombre es: $_email'),
    );
  }

  _crearEmail() {
     return TextField(
 
     keyboardType: TextInputType.emailAddress,

     
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon( Icons.alternate_email ),
        icon: Icon(Icons.email)

      ),
      onChanged: (valor) =>
         setState(() {
           _email = valor;
         })
    );
  }

 Widget _crearPassword() {
   return TextField(

     obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon( Icons.lock_open ),
        icon: Icon(Icons.lock)

      ),
      onChanged: (valor) =>
         setState(() {
           _email = valor;
         })
    );
 }
}