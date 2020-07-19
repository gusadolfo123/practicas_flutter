import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Forma 1
      // body: ListView(
      //   children: <Widget>[
      //     _header(),
      //     _qualification(),
      //     _menu(),
      //     _description(),
      //     _description(),
      //     _description(),
      //     _description(),
      //     _description(),
      //     _description(),
      //     _description(),
      //     _description(),
      //     _description(),
      //     _description(),
      //   ],
      // ),
      // Forma 2
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _header(),
            _qualification(),
            _menu(),
            _description(),
            _description(),
            _description(),
            _description(),
            _description(),
            _description(),
            _description(),
            _description(),
            _description(),
            _description(),
          ],
        ),
      ),
    );
  }

  Widget _description() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Qui velit ullamco non pariatur quis occaecat nostrud reprehenderit fugiat eu qui consectetur. Elit incididunt exercitation anim dolor reprehenderit culpa eu deserunt aute sunt laborum. Quis anim minim consequat aliqua. Est veniam Lorem ea consequat sit dolore.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _qualification() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Deschinen Lake Campground",
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    "Kandersteg Switzerland",
                    style: subtitleStyle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menu() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _button(title: "CALL", icon: Icons.call),
          _button(title: "ROUTE", icon: Icons.directions),
          _button(title: "SHARE", icon: Icons.share),
        ],
      ),
    );
  }

  Widget _button({String title, IconData icon}) {
    // return Column(
    //   children: <Widget>[
    //     Icon(icon, color: Colors.blue, size: 40.0),
    //     SizedBox(height: 5.0),
    //     Text(title, style: TextStyle(fontSize: 15.0, color: Colors.blue)),
    //   ],
    // );

    return ClipOval(
      child: Material(
        child: InkWell(
          child: SizedBox(
            width: 80,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon, color: Colors.blue, size: 40.0),
                SizedBox(height: 5.0),
                Text(title,
                    style: TextStyle(fontSize: 15.0, color: Colors.blue)),
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }

  Widget _header() {
    return FadeInImage(
      image: AssetImage("assets/img/image1.jpg"),
      placeholder: AssetImage("assets/img/image1.jpg"),
    );
  }
}
