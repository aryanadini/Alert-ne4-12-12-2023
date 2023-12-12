import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myalert extends StatefulWidget {
  const Myalert({super.key});

  @override
  State<Myalert> createState() => _MyalertState();
}

class _MyalertState extends State<Myalert> {

  showAlertDialog(BuildContext context){
    AlertDialog alert= AlertDialog(
      title: Text("Exit"),
      content: Text("sure want to exit"),
      actions: [
        ElevatedButton(onPressed: (){}, child: Text("yes"))
      ],



    );

    showDialog(context: context,
        builder: (BuildContext context){
          return alert;
        }

    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){
        showAlertDialog(context);
      }, child: Text("hi")),

      ),

    );
    
  }
  
}




