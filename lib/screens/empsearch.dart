import 'package:flutter/material.dart';
import 'package:flutter_node_employee/screens/mydrawer.dart';

void main()=>runApp(EmpSearch());
class EmpSearch extends StatefulWidget {
  @override
  _EmpSearchState createState() => _EmpSearchState();
}

class _EmpSearchState extends State<EmpSearch> {
  TextEditingController getEmployeecode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Employee Search"),
          backgroundColor: Colors.green,
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getEmployeecode,
                decoration: InputDecoration(
                    hintText: "empcode",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){
                String getEcode=getEmployeecode.text;
                print(getEcode);
              },
                color: Colors.green,
                child: Text("SEARCH"),
              )

            ],
          ),
        ),
      ),
    );
  }
}
