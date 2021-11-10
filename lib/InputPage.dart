import 'package:flutter/material.dart';
import 'package:madillilaapp/kConstants.dart';
import 'package:madillilaapp/AddCar.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {




  var userInput ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back),
        title: Text("Enter Amount"),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        double screenWidth = MediaQuery.of(context).size.width;
        print("ScreenWidth: $screenWidth");
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: SingleChildScrollView(
            child: IntrinsicHeight(
              child:
              Builder(
                  builder: (context) {
                    if(screenWidth < 460){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            children: [
                              Text('Enter Amount'),
                              Text('#$userInput'),
                            ],
                          ),
                          buildNumberPad(),
                        ],
                      );
                    }else return Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          children: [
                            Text('Enter Amount'),
                            Text('#$userInput'),
                          ],
                        ),
                        Expanded(child: buildNumberPad()),
                      ],
                    );
                  }
              ),
            ),
          ),
        );
      }),

    );
  }
  Container buildNumberPad() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KtextButton(
                text: '1',
                onpressed: () {
                  updateList('1');
                },
              ),
              KtextButton(
                text: '2',
                onpressed: () {
                  updateList('2');
                },
              ),
              KtextButton(
                text: '3',
                onpressed: () {
                  updateList('3');
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KtextButton(
                text: '4',
                onpressed: () {
                  updateList('4');
                },
              ),
              KtextButton(
                text: '5',
                onpressed: () {
                  updateList('5');
                },
              ),
              KtextButton(
                text: '6',
                onpressed: () {
                  updateList('6');
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KtextButton(
                text: '7',
                onpressed: () {
                  updateList('7');
                },
              ),
              KtextButton(
                text: '8',
                onpressed: () {
                  updateList('8');
                },
              ),
              KtextButton(
                text: '9',
                onpressed: () {
                  updateList('9');
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KtextButton(
                text: '.',
                onpressed: () {
                  updateList('.');
                },
              ),
              KtextButton(
                text: '0',
                onpressed: () {
                  updateList('0');
                },
              ),
              KiconButton(
                onpressed: () {
                  setState(() {

                  });
                },
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          KbottomButton(
            text: 'Transfer Fund',
              oppressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCard()),
                );
              })
        ],
      ),
    );

  }

  int? updateList(String char) {{
     setState(() {
       userInput +='';


      });
    }
  }
}

