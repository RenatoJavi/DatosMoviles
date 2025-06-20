import 'package:flutter/material.dart';
import 'package:login_app_2/viewmodels/counter_vm.dart';
import 'package:provider/provider.dart';

class Counterview extends StatelessWidget {
  const Counterview({super.key});

  // Counterview({super.key});
   //CounterVM viewModel = CounterVM();

  @override
  Widget build(BuildContext context) {
    
    return Consumer<CounterVM>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(title: Text('MVVM Counter App')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tienes que presionar el boton'),
                Text(
                  ' ${viewModel.counterValue}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                // mustra el valor del ViewModel
              ],
            ),
          ),

          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => viewModel
                    .decrementarCounter(), // Llama al método del ViewModel
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                onPressed: () {
                  viewModel.incremetarCounter();
                  print('ìncrementar ${viewModel.counterValue}');
                }, // Llama al método del ViewModel
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}
