import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_application_1/viewmodels/counter_vm.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final contadorViewModel = context.watch<CounterVm>();
    return Scaffold(
      appBar: AppBar(title: Text('data'), backgroundColor: Colors.blue),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Contador', style: TextStyle(fontSize: 24)),
          Text(
            ' ${contadorViewModel.dato}',
            style: TextStyle(fontSize: 30, fontFamily: 'ROBOTO'),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: contadorViewModel.decrementarContador,
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: contadorViewModel.incrementarContador,
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
