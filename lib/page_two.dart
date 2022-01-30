import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hostel/page_three.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({ Key? key }) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    GlobalKey<FormState> secondkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children:  [
          const  SizedBox(height: 20,),
           Form(
             key: formkey,
             child: Column(
             children: [
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                const  Align(
                    alignment: Alignment.centerLeft,
                    child:  Text("What would you like for lunch",style: TextStyle(
                    color: Colors.black, fontSize: 16
                                ),),
                  ),
                  SizedBox(height: 10,),
                    TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'I.e Mexican, Asian,Vegan,American',
                            hintStyle: TextStyle(color: Colors.black)
                            ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                        ])),
                  ],
                ),
              ),
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                const  Align(
                    alignment: Alignment.centerLeft,
                    child:  Text("How many people in your party?",style: TextStyle(
                    color: Colors.black, fontSize: 16
                                ),),
                  ),
                  SizedBox(height: 10,),
                    TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'between 1-10',
                            hintStyle: TextStyle(color: Colors.black)
                            ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "* Required"),
                        ])),
                  ],
                ),
              ),
            
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'when would you like it?',
                        ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ])),
              ),
             const Align(
              alignment: Alignment.center,
              child: Text("You will receive 1 Perk Point along with this order",style: TextStyle(
                color: Colors.black, fontSize: 16
              ),),
            ),
              FlatButton(
              color: Colors.cyan,
              textColor: Colors.white,
              onPressed: (){
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const PageThree()
                ));
              }, child: const Text("Submit")),
            
              
    ],
  )),
            ],
          ),
        ),
      )),
    );
  }
}








