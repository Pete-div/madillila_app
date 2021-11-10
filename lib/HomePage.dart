import 'package:flutter/material.dart';
import 'package:madillilaapp/kConstants.dart';
import 'package:madillilaapp/SecondPage.dart';

class HomePage  extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<HomePage> {
  final Color activeColors = Colors.green;
  final Color inactiveColors = Colors.grey;
  final List<String> storageList = [];
  int endIndex = 4;

  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back),
        title: Text("Wallet Pin"),
      ),
      body:

      LayoutBuilder(builder: (context, constraints) {
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
                          PinField(counter: counter, activeColors: activeColors, inactiveColors: inactiveColors, text: 'Enter Wallet Pin',),
                          buildNumberPad(),
                        ],
                      );
                    }else return Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: OtpPinField(counter: counter, activeColors: activeColors, inactiveColors: inactiveColors, text: 'Enter Wallet Pin',)),
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
                    storageList.removeAt(counter - 1);
                    counter--;
                  });
                },
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          KbottomButton(
            text: 'Wllet Pin',
              oppressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()),
                );
              })
        ],
      ),
    );

  }

  void updateList(String char) {
    if(counter < 4){
      setState(() {
        storageList.add(char);
        counter++;
      });
    }
  }
}




