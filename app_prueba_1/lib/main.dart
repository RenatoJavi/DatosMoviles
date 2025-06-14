import 'package:app_prueba_1/config/theme/app_theme.dart';
import 'package:app_prueba_1/presentaciones/pantalllas/chat/chat_screen.dart';
import 'package:app_prueba_1/presentaciones/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_)=>ChatProvider())],// creacion de la instancia inicila
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectorColores: 1).theme(),
        title: 'Material App',
        home: ChatScreen(),
      ),
    );
  }
}

/* 
Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body:  Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: Text('presioname'),
          ),
        ),
      ), */
