import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        elevation: 0,
        centerTitle: true,
        title: Text("Menu Ejercicios"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.grey[700],
            child: ListTile(
              title: Text(
                "Ejemplo 1 Pagina sencilla",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.web, color: Colors.white),
              trailing: Icon(Icons.arrow_right, color: Colors.white),
              onTap: () {
                Navigator.pushNamed(context, "home");
              },
            ),
          ),
          Container(
            color: Colors.grey[700],
            child: ListTile(
              title: Text(
                "Ejemplo 2 Pagina PageView",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.web, color: Colors.white),
              trailing: Icon(Icons.arrow_right, color: Colors.white),
              onTap: () {
                Navigator.pushNamed(context, "home2");
              },
            ),
          ),
          Container(
            color: Colors.grey[700],
            child: ListTile(
              title: Text(
                "Ejemplo 3 Pagina Compleja",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.web, color: Colors.white),
              trailing: Icon(Icons.arrow_right, color: Colors.white),
              onTap: () {
                Navigator.pushNamed(context, "complex");
              },
            ),
          ),
        ],
      ),
    );
  }
}
