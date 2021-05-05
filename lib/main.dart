import 'package:flutter/material.dart';
import 'package:vilists/view/about.dart';
import 'package:vilists/view/lists.dart';
import 'package:vilists/view/account.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), home: Lists());
  }
}

Widget generateListViewDrawerLayout(BuildContext context) {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      Container(
        height: 88.0,
        child: DrawerHeader(
          child: Text("Vilists - Menu",
              style: TextStyle(color: Colors.white, fontSize: 18.0)),
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ),
      ListTile(
        leading: Icon(Icons.view_list),
        title: Text("Listas de Tarefas"),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Lists();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text("Minha Conta"),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Account();
          }));
        },
      ),
      ListTile(
        leading: Icon(Icons.menu_book),
        title: Text("Tudo Sobre Listas"),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return About();
          }));
        },
      ),
    ],
  );
}
