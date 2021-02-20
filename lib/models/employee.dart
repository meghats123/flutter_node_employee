/// _id : "6016638498db541cf0d4df7d"
/// empname : "sajeev"
/// address : "ambadiyil"
/// phoneno : 9854357890
/// designation : "overseer"
/// email : "sajeev@gmail.com"
/// salary : 150000
/// companyname : "kseb"
/// empcode : 2030

class Employee {
 // String _id;
  String empname;
  String address;
  String phoneno;
  String designation;
  String email;
  String salary;
  String companyname;
  String empcode;
  Employee({this.empname, this.address, this.phoneno, this.designation,
    this.email, this.salary, this.companyname, this.empcode});





  Employee.fromJson(dynamic json) {
   // _id = json["_id"];
    empname = json["empname"];
    address = json["address"];
    phoneno = json["phoneno"];
    designation = json["designation"];
    email = json["email"];
    salary = json["salary"];
    companyname = json["companyname"];
    empcode = json["empcode"];
  }


  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
   // map["_id"] = _id;
    map["empname"] = empname;
    map["address"] = address;
    map["phoneno"] = phoneno;
    map["designation"] = designation;
    map["email"] = email;
    map["salary"] = salary;
    map["companyname"] = companyname;
    map["empcode"] = empcode;
    return map;
  }


}
