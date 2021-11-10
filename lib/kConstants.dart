import 'package:flutter/material.dart';


class KtextButton extends StatelessWidget {
  KtextButton({required this.text,required this.onpressed});
  final text;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextButton(onPressed:onpressed,
        child: Text(text,
          style: TextStyle(
            color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w300
          ),),
      ),
    );
  }
}
class KiconButton extends StatelessWidget {
 KiconButton({required this.onpressed});
 final onpressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed:onpressed,
      child: Icon(Icons.backspace_outlined,
        color: Color(0xFF3F3C40),
        size: 30,),);
  }
}
class KbottomButton extends StatelessWidget {
   KbottomButton({required this.oppressed,required this.text});
   final oppressed;
   final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10)
      ),
      width: 200,
      child: TextButton(onPressed: oppressed,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,
                  style: TextStyle(
                      color: Colors.white
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_right_sharp,
                  color: Colors.white,),
              )
            ],
          )),
    );
  }
}
class KinActiveAvatar extends StatelessWidget {
  KinActiveAvatar({required this.backgroundColor});
  final backgroundColor;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CircleAvatar(
        backgroundColor:backgroundColor,
        radius: 8,
      ),
    );
  }
}
class PinField extends StatelessWidget {
  const PinField({
    required this.counter,
    required this.activeColors,
    required this.inactiveColors,
    required this.text
  }) ;

  final int counter;
  final Color activeColors;
  final Color inactiveColors;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(text,
              style: TextStyle(
                  color: Colors.black, fontSize: 30),
              textAlign: TextAlign.center),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KinActiveAvatar(
                  backgroundColor: counter >= 1
                      ? activeColors
                      : inactiveColors),
              KinActiveAvatar(
                  backgroundColor: counter >= 2
                      ? activeColors
                      : inactiveColors),
              KinActiveAvatar(
                  backgroundColor: counter >= 3
                      ? activeColors
                      : inactiveColors),
              KinActiveAvatar(
                  backgroundColor: counter >= 4
                      ? activeColors
                      : inactiveColors),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}


class OtpPinField extends StatelessWidget {
  const OtpPinField({
    required this.counter,
    required this.activeColors,
    required this.inactiveColors,
    this.text
  }) ;

  final int counter;
  final Color activeColors;
  final Color inactiveColors;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text('Enter OTP',
                    style: TextStyle(
                        color: Colors.black, fontSize: 30),
                    textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('Enter 6-digit code sent to verify the ownership of Card',
                    style: TextStyle(
                        color: Colors.black, fontSize: 30),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KinActiveAvatar(
                  backgroundColor: counter >= 1
                      ? activeColors
                      : inactiveColors),
              KinActiveAvatar(
                  backgroundColor: counter >= 2
                      ? activeColors
                      : inactiveColors),
              KinActiveAvatar(
                  backgroundColor: counter >= 3
                      ? activeColors
                      : inactiveColors),
              KinActiveAvatar(
                  backgroundColor: counter >= 4
                      ? activeColors
                      : inactiveColors),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

