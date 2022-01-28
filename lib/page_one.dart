import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hostel/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({ Key? key }) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    GlobalKey<FormState> secondkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children:  [
          const  SizedBox(height: 20,),
           const Align(
              alignment: Alignment.center,
              child: Text("Welcome to Sebe “ The Meeting Company “",style: TextStyle(
                color: Colors.white, fontSize: 16
              ),),
            ),
            const  SizedBox(height: 15,),
            FlatButton(
              color: Colors.cyan,
              textColor: Colors.white,
              onPressed: (){}, child: const Text("Book An Appointment")),
              const  SizedBox(height: 20,),
           const Align(
              alignment: Alignment.centerLeft,
              child: Text("Please Enter The Required Information Below :",style: TextStyle(
                color: Colors.white, fontSize: 16
              ),),
            ),
           Form(
             key: formkey,
             child: Column(
             children: [
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                        hintText: 'Enter Full Name',
                        hintStyle: TextStyle(color: Colors.white)
                        ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ])),
              ),
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                        hintText: 'Enter Valid Phone Number',
                        hintStyle: TextStyle(color: Colors.white)
                        ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ])),
              ),
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Company Name',
                        hintText: 'Enter Company Name',
                        hintStyle: TextStyle(color: Colors.white)
                        ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ])),
              ),
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Office',
                        hintText: 'Point Of Contact/Office',
                        hintStyle: TextStyle(color: Colors.white)
                        ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ])),
              ),
              FlatButton(
              color: Colors.cyan,
              textColor: Colors.white,
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
              }, child: const Text("Submit")),
            
              
    ],
  )),
   Form(
             key: secondkey,
             child: Column(
             children: [
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter Valid Email',
                        hintStyle: TextStyle(color: Colors.white)
                        ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ])),
              ),
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        hintStyle: TextStyle(color: Colors.white)
                        ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ])),
              ),
              FlatButton(
              color: Colors.cyan,
              textColor: Colors.white,
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const PageTwo()
                ));
              }, child: const Text("Login")),
            
              
    ],
  )),
            ],
          ),
        ),
      )),
    );
  }
}








Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Note!'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("After receiving this information we will contact you back within 24-48 hours with a preliminary meeting schedule."),
      ],
    ),
    actions: <Widget>[
      FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}