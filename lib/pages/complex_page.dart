import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ComplexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _buttons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationButton(context),
    );
  }

  Widget _buttons() {
    return Table(
      children: [
        TableRow(
          children: [
            _buttonRounded(
                color: Colors.blue, icon: Icons.border_all, text: "General"),
            _buttonRounded(
                color: Colors.purpleAccent,
                icon: Icons.directions,
                text: "General"),
          ],
        ),
        TableRow(
          children: [
            _buttonRounded(
                color: Colors.pinkAccent,
                icon: Icons.border_all,
                text: "General"),
            _buttonRounded(
                color: Colors.orange, icon: Icons.directions, text: "General"),
          ],
        ),
        TableRow(
          children: [
            _buttonRounded(
                color: Colors.blueAccent,
                icon: Icons.border_all,
                text: "General"),
            _buttonRounded(
                color: Colors.green, icon: Icons.cloud, text: "General"),
          ],
        ),
        TableRow(
          children: [
            _buttonRounded(
                color: Colors.blue, icon: Icons.border_all, text: "General"),
            _buttonRounded(
                color: Colors.purpleAccent,
                icon: Icons.directions,
                text: "General"),
          ],
        ),
      ],
    );
  }

  Widget _buttonRounded({Color color, IconData icon, String text}) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                text,
                style: TextStyle(color: color),
              ),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationButton(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(
                color: Color.fromRGBO(116, 117, 152, 1.0),
              ),
            ),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            title: Container(),
          )
        ],
      ),
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Classify transaction",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Classify this transaction into a particular category",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );

    final item = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ],
          ),
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -100.0,
          child: item,
        ),
      ],
    );
  }
}
