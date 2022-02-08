import 'package:flutter/material.dart';
import 'dart:async';

class TimeLapse extends StatefulWidget {
  const TimeLapse({Key? key}) : super(key: key);

  @override
  _TimeLapseState createState() => _TimeLapseState();
}

class _TimeLapseState extends State<TimeLapse> {
  //variable
  int timeLeft = 5;

  //timer method
  void _startContDown(){
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(timeLeft > 0){
        setState(() {
          //chang values os stuff
          timeLeft --;

        });
      }else{
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              timeLeft ==0 ? 'Done' : timeLeft.toString(),
              style: TextStyle(fontSize: 70),
            ),
            SizedBox(height: 25,),
            ElevatedButton(
                onPressed: _startContDown,
              child: Text(
                  'S T A R T',
                style: TextStyle(color: Colors.white),
              ),

            )
          ],
        ),
      ),
    );
  }
}
