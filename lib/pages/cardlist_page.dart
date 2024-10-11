import 'package:control_work/pages/addcard_page.dart';
import 'package:flutter/material.dart';

class CardListPage extends StatefulWidget {

  static const String id = "cardlist_page";

  const CardListPage({super.key});

  @override
  State<CardListPage> createState() => _CardListPageState();
}

class _CardListPageState extends State<CardListPage> {

  _callAddCard(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddCardPage()),
    );  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card List",style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            //color: Colors.grey,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  padding: EdgeInsets.only(bottom: 10,right: 8),
                  height: 90,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage("assets/images/mastercard.jpg"),
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("**** **** **** 9275",style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black
                      ),),
                      Text("11/25",style: TextStyle(
                        fontSize: 18,
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),

          //#Second_card:
          Container(
            //color: Colors.orangeAccent,
            height: 120,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  padding: EdgeInsets.only(bottom: 10,right: 8),
                  height: 90,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage("assets/images/visa1.png"),
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("**** **** **** 9275",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black
                      ),),
                      Text("11/25",style: TextStyle(
                        fontSize: 18,
                      ),)
                    ],
                  ),
                ),
              ],
            ),

          ),

          //Bottom_button:
          Expanded(child: SizedBox.shrink()),
          GestureDetector(
            onTap: (){
              _callAddCard();

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
