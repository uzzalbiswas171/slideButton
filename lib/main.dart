import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(SecondScreen());
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drag app"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double width = 100.0, height = 100.0;
  late Offset position ;

  @override
  void initState() {
    super.initState();
    position = Offset(0.0, height - 20);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,


        child: Container(
          height: 80,
          width: double.infinity,
          color: Colors.redAccent,
          child: Slidable(
            endActionPane: ActionPane(
              extentRatio: 0.1,
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  // An action can be bigger than the others.
                  flex: 2,
                  onPressed: doNothing,
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                ),

              ],
            ),
            startActionPane: ActionPane(
              extentRatio: 0.1,
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  // An action can be bigger than the others.
                  flex: 2,
                  onPressed: doNothing,
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,

                ),

              ],
            ),
            child: Container(
              height: 80,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(17),
                    topRight: Radius.circular(17)
                  )
                ),
                child: Text('Slide me')),

          ),
        ),
      )
    );
  }


}

void doNothing(BuildContext context) {
     print("done");
}