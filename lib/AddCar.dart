import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madillilaapp/kConstants.dart';
import 'package:madillilaapp/WalletPin.dart';


class AddCard extends StatefulWidget {
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back),
        title: Text("Add Card"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:40,left: 20,right: 20),
          child: Container(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Card Number',
                        style:
                        TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),),
                      Container(
                        padding: EdgeInsets.only(left:20),
                        color: Colors.grey.shade200,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          decoration: InputDecoration(
                            icon:Icon(Icons.calendar_today_outlined,
                              size: 25,),
                            hintText: '    CARD NUMBER',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)
                            ),

                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                Row(

                  children: [
                    Expanded(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40,left: 8),
                            child: Text('Exp. Date',
                              style:
                              TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Container(
                              color: Colors.grey.shade200,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                decoration: InputDecoration(
                                  hintText: '    MM/YY',
                                  icon:Icon(Icons.error,
                                    size: 25,),

                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)
                                  ),

                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40,left: 8),
                            child: Text('CVV',
                              style:
                              TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Container(
                              color: Colors.grey.shade200,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                decoration: InputDecoration(
                                  hintText: '123',
                                  icon:Icon(Icons.error_outlined,
                                    size: 25,),

                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)
                                  ),

                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text('Card Holder Number',
                        style:
                        TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:20),
                      color: Colors.grey.shade200,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        decoration: InputDecoration(
                          hintText: '    Cared Holder Number',
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                          ),

                        ),

                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: KbottomButton(
                      text: 'Transfer Fund',
                      oppressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WalletPin()),
                        );
                      }),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
