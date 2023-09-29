import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {

  int value =0;
  void add(){
    setState(() {
      value++;
    });
    
  }
  void sub(){
    setState(() {
      value--;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('counter'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('value $value'),
            SizedBox(height: 50,),
            Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: (){
              add();
            },
            child: Icon(Icons.add),
            ),SizedBox(width: 20,),
             FloatingActionButton(onPressed: (){
              sub();
            },
            child: Icon(Icons.remove),
            )
          ],
          

            )
          ],
        ),
      ),
    );
  }
}