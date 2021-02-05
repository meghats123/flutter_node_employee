import 'package:flutter/material.dart';
import 'package:flutter_node_employee/screens/mydrawer.dart';

class CheckApp extends StatefulWidget {
  @override
  _CheckAppState createState() => _CheckAppState();
}

class _CheckAppState extends State<CheckApp> {
  TextEditingController getEmployeename=TextEditingController();
  TextEditingController getAddress=TextEditingController();
  TextEditingController getPhoneno=TextEditingController();
  TextEditingController getDesignation=TextEditingController();
  TextEditingController getEmail=TextEditingController();
  TextEditingController getEmpsalary=TextEditingController();
  TextEditingController getCname=TextEditingController();
  TextEditingController getEmployeecode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Employee Entry"),
          backgroundColor: Colors.green,
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(10.0),

          child: SingleChildScrollView(
            child: Column(

              children: [

                TextField(
                  controller: getEmployeename,
                  decoration: InputDecoration(
                      hintText: "empname",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getAddress,
                  decoration: InputDecoration(
                      hintText: "address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getPhoneno,
                  decoration: InputDecoration(
                      hintText: "phoneno",
                      border: OutlineInputBorder()
                  ),
                ),SizedBox(height: 10.0,),
                TextField(
                  controller: getDesignation,
                  decoration: InputDecoration(
                      hintText: "designation",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getEmail,
                  decoration: InputDecoration(
                      hintText: "email",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getEmpsalary,
                  decoration: InputDecoration(
                      hintText: "salary",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getCname,
                  decoration: InputDecoration(
                      hintText: "companyname",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getEmployeecode,
                  decoration: InputDecoration(
                      hintText: "empcode",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  String getEname=getEmployeename.text;
                  String getEaddress=getAddress.text;
                  String getEphone=getPhoneno.text;
                  String getEdesig=getDesignation.text;
                  String getEemail=getEmail.text;
                  String getEsalary=getEmpsalary.text;
                  String getCompanyname=getCname.text;
                  String getEcode=getEmployeecode.text;
                  print(getEname);
                  print(getEaddress);
                  print(getEphone);
                  print(getEdesig);
                  print(getEemail);
                  print(getEsalary);
                  print(getCompanyname);
                  print(getEcode);

                },
                  color: Colors.green,
                  child: Text("SUBMIT"),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
