import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _botonera()
              ]
            )
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigatorBar(context)
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 52, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      )
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 132, 1.0)
            ]
          ),
        ),
      )
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100.0,
        )
        
      ],
    );
    
  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Clasify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Clasify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ]
        ),
      ),
    );

  }

  Widget _bottomNavigatorBar(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            title: Container()
          )
        ],
      ),
    );

  }

  Widget _botonera() {

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.shop, 'Buy'),
            _crearBotonRedondeado(Colors.orange, Icons.insert_drive_file, 'File')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
            _crearBotonRedondeado(Colors.green, Icons.cloud, 'Groceries')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.red, Icons.collections, 'Photos'),
            _crearBotonRedondeado(Colors.teal, Icons.help_outline, 'Info')
          ]
        )
      ]
    );

  }

  Widget _crearBotonRedondeado(Color color, IconData icon, String texto) {

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 70.0),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0),
              ),
              Text(texto, style: TextStyle(color: color)),
              SizedBox(height: 5.0)
            ]
          ),
        ),
      ),
    );

  }


}

