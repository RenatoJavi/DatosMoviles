import 'package:flutter/material.dart';
import 'package:login_app_2/viewmodels/counter_vm.dart';
import 'package:login_app_2/views/counterView.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      
      providers: [
        ChangeNotifierProvider(create: (context) => CounterVM())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        home: Counterview(),
      ),
    );
  }
}
