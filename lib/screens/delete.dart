import 'package:flutter/material.dart';
import 'package:flutter_node_employee/screens/mydrawer.dart';

void main()=>runApp(EmpDelete());
class EmpDelete extends StatefulWidget {
  @override
  _EmpUpdateState createState() => _EmpUpdateState();
}

class _EmpUpdateState extends State<EmpDelete> {
  TextEditingController getEmployeecode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Employee Delete"),
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
                    hintText: "Employee id",
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
