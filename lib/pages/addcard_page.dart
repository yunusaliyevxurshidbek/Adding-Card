import 'package:control_work/pages/cardlist_page.dart';
import 'package:flutter/material.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {

_callCardList(){
  Navigator.of(context).pushReplacementNamed(CardListPage.id);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Card",style: TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.bold,
    ),
      ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height:180 ,
              width: 320,
              //color: Colors.grey,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/main1.jpg"),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),


          Container(
            margin: EdgeInsets.all(50),
            //color: Colors.grey,
            child: Text("Enter expiration date",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
          ),

          SizedBox(height: 10,),

          // Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: "5272 8920 9183 9232",
                hintStyle: TextStyle(fontSize: 30),
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: TextField(
              decoration: InputDecoration(
                hintText: "12/24",
                hintStyle: TextStyle(fontSize: 30),
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Expanded(child: SizedBox.shrink()),
          GestureDetector(
            onTap: (){
              _callCardList();

            },
            child: Container(
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 40),
              //color: Colors.blue,
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text("Add Card",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
