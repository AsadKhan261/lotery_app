import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainClass(),
    );
  }
}

class MainClass extends StatefulWidget {
  const MainClass({Key? key}) : super(key: key);

  @override
  State<MainClass> createState() => _MainClassState();
}
int a = 0;
Random abc = Random();
class _MainClassState extends State<MainClass> {
  @override

  Widget build(BuildContext context) {


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          a = abc.nextInt(6);
          setState(() {});
          print(a);
        },
          child: const Icon(Icons.refresh)
          ),
      appBar: AppBar(
        title: const Text('Lotery App'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Wining number of lotery is $a')),
          const SizedBox(height: 30,),
          Container(
            height: 300,
            width: 300,
            color: a == 4? Colors.blueGrey:Colors.grey.withOpacity(0.2),
            child: a == 4?Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.check,color: Colors.green,),
                SizedBox(height: 30,),
                Text('Congrats you won the lotery'),
              ],
            ): Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Icon(Icons.error,color: Colors.red,),
                const SizedBox(height: 30,),
                Text('better luck Next Time :: Lotery Number is $a'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
