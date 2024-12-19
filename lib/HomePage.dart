

import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int Count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.blue,
        title: Center(child: Text('SetState')),),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FloatingActionButton(onPressed: (){
             setState(() {
               Count ++;
             });

                 },
                 child: Icon(Icons.add),
                 ),
          ),
          Spacer(),
          FloatingActionButton(onPressed: (){
            setState(() {
              Count --;
            });

          },
            child: Icon(Icons.minimize),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Count.toString(),
              style: TextStyle(fontSize: 50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
