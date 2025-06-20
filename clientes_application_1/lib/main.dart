import 'package:clientes_application_1/viewmodels/cliente_list_viewmodel.dart';
import 'package:clientes_application_1/views/clientes_lista_views.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
 //runApp(const MyApp());
 runApp(ChangeNotifierProvider(create: (context)=>(ClienteListViewmodel()),child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ClientesListaViews(),
    );
  }
}
