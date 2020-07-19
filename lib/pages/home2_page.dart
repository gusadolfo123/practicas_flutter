import 'package:flutter/material.dart';

class Home2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2(context),
        ],
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _header(),
      ],
    );
  }

  Widget _header() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text("10", style: textStyle),
          Text("Miercoles", style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white),
        ],
      ),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage("assets/img/scroll-1.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _page2(context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          color: Colors.blue,
          shape: StadiumBorder(),
          elevation: 10.0,
          onPressed: () {
            Navigator.pushNamed(context, "complex");
          },
          child: Padding(
            child: Text(
              "Bienvenido",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          ),
        ),
      ),
    );
  }
}
