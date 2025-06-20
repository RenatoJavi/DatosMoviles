import 'package:flutter/material.dart';
import 'package:mvvm_application_2/viewmodelo/counter_vm.dart';
import 'package:provider/provider.dart';
//import 'package:mvvm_application_2/viewmodelo/counter_vm.dart';

class MiVista extends StatelessWidget {
  //final CounterViewModel contadorVista = CounterViewModel();

  const MiVista({super.key});

  @override
  Widget build(BuildContext context) {
    final contadorVista = Provider.of<CounterViewModel>(context);
    //la clave es CounterViewModel , esta instancia me permite escuchra
    // los cambios en el ViewModel

    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        shadowColor: Colors.blueGrey,
        title: Text('data'),
        backgroundColor: Colors.lightGreen,
        leading: Icon(Icons.more_vert),
        // actions: [PopupMenuButton(onSelected: (String result){})],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Text(
              'Subir - Bajar',
              style: TextStyle(fontSize: 30, fontFamily: 'ROBOTO'),
            ),
            Text(
              '${contadorVista.valor}',
              style: TextStyle(fontSize: 55, fontFamily: 'ROBOTO'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.blueGrey,
                  onPressed: () => contadorVista.decremento(),
                  child: Icon(Icons.remove, color: Colors.white),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.blueGrey,
                  onPressed: () => contadorVista.incremento(),
                  child: Icon(Icons.add, color: Colors.white, size: 26),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
