import 'package:flutter/material.dart';
import 'package:flutter_node_employee/models/employee.dart';
import 'package:flutter_node_employee/screens/mydrawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
Future<Employee>sendData(String apiLink,{Map body})async{
  return http.post(apiLink,body:body).then((http.Response response){
    print(response.body);
    return json.decode(response.body);
  });
}



class CheckApp extends StatefulWidget {
  @override
  _CheckAppState createState() => _CheckAppState();
}

class _CheckAppState extends State<CheckApp> {
  TextEditingController Employeename=TextEditingController();
  TextEditingController Address=TextEditingController();
  TextEditingController Phoneno=TextEditingController();
  TextEditingController Designation=TextEditingController();
  TextEditingController Email=TextEditingController();
  TextEditingController Empsalary=TextEditingController();
  TextEditingController Cname=TextEditingController();
  TextEditingController Employeecode=TextEditingController();
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
                  controller: Employeename,
                  decoration: InputDecoration(
                      hintText: "empname",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: Address,
                  decoration: InputDecoration(
                      hintText: "address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: Phoneno,
                  decoration: InputDecoration(
                      hintText: "phoneno",
                      border: OutlineInputBorder()
                  ),
                ),SizedBox(height: 10.0,),
                TextField(
                  controller: Designation,
                  decoration: InputDecoration(
                      hintText: "designation",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: Email,
                  decoration: InputDecoration(
                      hintText: "email",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: Empsalary,
                  decoration: InputDecoration(
                      hintText: "salary",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: Cname,
                  decoration: InputDecoration(
                      hintText: "companyname",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: Employeecode,
                  decoration: InputDecoration(
                      hintText: "empcode",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: () async {
                  var getEname=Employeename.text;
                  var getEaddress=Address.text;
                  var getEphone=Phoneno.text;
                  var getEdesig=Designation.text;
                  var getEemail=Email.text;
                  var getEsalary=Empsalary.text;
                  var getCompanyname=Cname.text;
                  var getEcode=Employeecode.text;
                  Employee empdata=new Employee(
                    empname: getEname,
                    address: getEaddress,
                    phoneno: getEphone,
                    designation: getEdesig,
                    email: getEemail,
                    salary: getEsalary,
                    companyname: getCompanyname,
                    empcode: getEcode
                  );
                  Employee datatosend=await sendData("https://nodejsemployee.herokuapp.com/empadd",body: empdata.toJson());

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
