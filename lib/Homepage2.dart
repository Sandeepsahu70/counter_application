import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ColorProvider.dart';  // Import ColorProvider

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child: Text('Provider Demo')),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellowAccent,
        child: Column(
          children: [
            SizedBox(height: 50),
            Consumer<ColorProvider>(
              builder: (context, colorProvider, child) {
                return Container(
                  height: 100,
                  width: 100,
                  color: colorProvider.colorContainer,
                );
              },
            ),
            SizedBox(height: 50),
            Consumer<ColorProvider>(
              builder: (context, colorProvider, child) {
                return Text(
                  colorProvider.label,
                  style: TextStyle(fontSize: 26),
                );
              },
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // Use Provider to change the state
                Provider.of<ColorProvider>(context, listen: false)
                    .changeColor(Colors.red, 'This is red Color');
              },
              child: Text(
                'Tap For Change Color',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// class Homepage2 extends StatefulWidget {
//   const Homepage2({super.key});
//
//   @override
//   State<Homepage2> createState() => _Homepage2State();
// }
//
// class _Homepage2State extends State<Homepage2> {
//   var label = ' This is blue Color';
//   var ColorContainer = Colors.blue;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar( backgroundColor: Colors.deepPurple,
//         title: Center(child: Text('setState demo')),),
//
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: Colors.yellowAccent,
//
//         child: Column(children: [
//           SizedBox(height: 50,),
//           Container(
//             height: 100,
//             width: 100,
//             color: ColorContainer,
//           ),
//           SizedBox(height: 50,),
//
//           Text(
//             label
//             ,style: TextStyle(fontSize: 26),),
//           SizedBox(height: 50,),
//
//
//           ElevatedButton(onPressed: (){
//             setState(() {
//               label = ' This is red Color';
//               ColorContainer = Colors.red;
//             });
//
//           }, child: Text('Tap For Change Color',style: TextStyle(fontSize: 18),))
//         ],),
//
//       ),
//     );
//   }
// }
