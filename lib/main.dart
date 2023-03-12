/// It contains Flutter widgets implementing Material Design.
/// Material is a design system created by Google to help teams build high-quality digital experiences for Android, iOS, Flutter, and the web.
import 'package:flutter/material.dart';

/// This is an entry point for any flutter application
void main() {
  runApp(const MyApp());
}

//FLUTTER WIDGETS =>
// 1. Stateless widgets:  Stateless widgets are the widgets that don’t change i.e. they are immutable.
// To create a Stateless widget we have to override build() method
// Example : Icon, IconButton and Text....

// 2. Stateful widgets:  Stateful Widgets are the ones that change its properties during run-time.
// They are dynamic i.e., they are mutable and can be drawn multiple times within its lifetime.
// It can change its appearance in response to events triggered by user interactions or when it receives data.
// To create a Stateful widget we need to override a createState() method
// Example : Checkbox, Radio Button, Slider, InkWell, Form, and TextField
class MyApp extends StatelessWidget {
  // This is an constructor of class 'MyHomePage'
  // In Flutter, keys store the widget’s state when the device moves from one branch to another in the widget tree.
  // Keys can be found in almost every widget as named parameters. It is useful when we need to store the widget’s state having the same type of data.
  const MyApp({super.key});

  // This widget is the root of your application.
  // Everything in flutter app is a widget
  // In computer language "Widget is an interface"
  @override
  // BuildContext is a locator that is used to track each widget in a tree and locate them and their position in the tree.
  // The BuildContext of each widget is passed to their build method. Remember that the build method returns the widget tree a widget renders.
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcButton(String btnText, Color btnColor, Color textColor) {
    return Container(
      child: ElevatedButton(
        onPressed: (() {}),
        child: Text(
          btnText,
          style: TextStyle(fontSize: 35, color: textColor),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
            fixedSize: const Size(80, 80),
            shape: CircleBorder(),
            padding: EdgeInsets.all(10)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          // This will put the textfields to bottom & will start building with bottom up approach
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "0",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // These are the functioning buttons
                calcButton('AC', Colors.grey, Colors.black),
                calcButton('+/-', Colors.grey, Colors.black),
                calcButton('%', Colors.grey, Colors.black),
                calcButton('÷', Colors.orangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // These are the functioning buttons
                calcButton('9', Colors.grey.shade800, Colors.white),
                calcButton('8', Colors.grey.shade800, Colors.white),
                calcButton('7', Colors.grey.shade800, Colors.white),
                calcButton('x', Colors.orangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // These are the functioning buttons
                calcButton('6', Colors.grey.shade800, Colors.white),
                calcButton('5', Colors.grey.shade800, Colors.white),
                calcButton('4', Colors.grey.shade800, Colors.white),
                calcButton('-', Colors.orangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // These are the functioning buttons
                calcButton('3', Colors.grey.shade800, Colors.white),
                calcButton('2', Colors.grey.shade800, Colors.white),
                calcButton('1', Colors.grey.shade800, Colors.white),
                calcButton('+', Colors.orangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // These are the functioning buttons
                calcButton('( )', Colors.grey.shade800, Colors.white),
                calcButton('0', Colors.grey.shade800, Colors.white),
                calcButton('.', Colors.grey.shade800, Colors.white),
                calcButton('=', Colors.orangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
