import 'package:flutter/material.dart';

class TopUpS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child:Icon(Icons.check_sharp,
                color: Colors.white,
                size: 50,),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  border: Border.all(color: Colors.white)
                ),
              ),
            ),
            Text('Top-up Successful',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40
              ),
            ),
          ],
        ),
      )
    );
  }
}
