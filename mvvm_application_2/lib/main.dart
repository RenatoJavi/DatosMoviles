import 'package:flutter/material.dart';
import 'package:mvvm_application_2/viewmodelo/counter_vm.dart';
import 'package:mvvm_application_2/vista/counter_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (contex) => CounterViewModel(),
      child:const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //theme: ThemeData( colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 66, 73, 207)),   ),
      home: MiVista(),
    );
  }
}


/*

import 'package:flutter/material.dart';
import 'package:mvvm_application_2/vista/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MiVista()
    );
  }
}

*/