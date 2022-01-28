import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({ Key? key }) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(child: 
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: const [
                Align(
                alignment: Alignment.center,
                child: Text("SeBe Perk Points !",style: TextStyle(
                  color: Colors.white, fontSize: 16
                ),),
              ),
              SizedBox(height: 15,),
                Align(
                alignment: Alignment.centerLeft,
                child: Text("We work with Fortune 500 companies that offer discounted Products and Services for doing business with Sebe.",style: TextStyle(
                  color: Colors.white, fontSize: 16
                ),),
              ),
              SizedBox(height: 15,),
                Align(
                alignment: Alignment.centerLeft,
                child: Text("Offers and Discounts Include :",style: TextStyle(
                  color: Colors.white, fontSize: 16
                ),),
              ),
              SizedBox(height: 15,),
                Align(
                alignment: Alignment.centerLeft,
                child: Text("Rental Car",style: TextStyle(
                  color: Colors.white, fontSize: 16
                ),),
              ),
              SizedBox(height: 15,),
                Align(
                alignment: Alignment.centerLeft,
                child: Text("Test Drives  (Mercedes, Lexus, Infiniti, Land Rover, Cadillac)",style: TextStyle(
                  color: Colors.white, fontSize: 16
                ),),
              ),
              SizedBox(height: 15,),
                Align(
                alignment: Alignment.centerLeft,
                child: Text("Store Discounts (Macys, Nike, etc)",style: TextStyle(
                  color: Colors.white, fontSize: 16
                ),),
              ),
              SizedBox(height: 15,),
                Align(
                alignment: Alignment.centerLeft,
                child: Text("Golf Course Passes",style: TextStyle(
                  color: Colors.white, fontSize: 16
                ),),
              ),
              SizedBox(height: 15,),
                Align(
                alignment: Alignment.centerLeft,
                child: Text("Coffee Orders ( Starbucks)",style: TextStyle(
                  color: Colors.white, fontSize: 16
                ),),
              ),
              SizedBox(height: 15,),
                Align(
                alignment: Alignment.centerLeft,
                child: Text("Show tickets ( Theater, Sports, Music, etc)",style: TextStyle(
                  color: Colors.white, fontSize: 16
                ),),
              ),
            ],
          ),
        ),
      )
      ),
    );
  }
}