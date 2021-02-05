
import 'package:flutter/material.dart';
import 'package:flutter_node_employee/screens/delete.dart';
import 'package:flutter_node_employee/screens/empadd.dart';
import 'package:flutter_node_employee/screens/empsearch.dart';
import 'package:flutter_node_employee/screens/update.dart';

void main()=>runApp(MyDrawer());
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.amber,
              
            ),
              accountName: Text("Megha"),
              accountEmail: Text("megha@gmail.com")),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> CheckApp()));
            },
            trailing: Icon(Icons.add),
            title: Text("Employee Add"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> EmpSearch()));
            },
            trailing: Icon(Icons.add),
            title: Text("Employee Search"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> EmpUpdate()));
            },
            trailing: Icon(Icons.add),
            title: Text("Update"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> EmpDelete()));
            },
            trailing: Icon(Icons.add),
            title: Text("Delete"),
          ),
        ],
      ),
    );
  }
}
