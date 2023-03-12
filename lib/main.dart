
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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
