import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold
  );

  final estiloSubTitulo = TextStyle(
    fontSize: 18.0,
    color: Colors.grey
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          
        ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage('https://i.vimeocdn.com/video/703876203_640.jpg'),
          height: 200.0,
          fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Paisaje maravilloso', style: estiloTitulo),
                        SizedBox(height: 7.0),
                        Text('Mezcla el dia y la noche', style: estiloSubTitulo),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0),
                  Text('41', style: TextStyle(fontSize: 20.0))
                ],
              ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call, 'CALL'),
        _crearAccion(Icons.near_me, 'ROUTE'),
        _crearAccion(Icons.share, 'SHARE'),
      ]
    );
  }

  Widget _crearAccion(IconData icon, String texto) {
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0,),
            SizedBox(height: 5.0),
            Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blueAccent))
          ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text('Nostrud sunt reprehenderit enim pariatur qui mollit pariatur. Amet ex labore culpa aliqua fugiat voluptate aute aute velit tempor duis et irure. Aliqua tempor cupidatat laboris in dolor proident id deserunt nisi voluptate.', textAlign: TextAlign.justify,)
      ),
    );
  }
}