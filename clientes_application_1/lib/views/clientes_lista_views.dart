import 'package:clientes_application_1/modelo/cliente_model.dart';
import 'package:clientes_application_1/viewmodels/cliente_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClientesListaViews extends StatelessWidget {
  const ClientesListaViews({super.key});

  @override
  Widget build(BuildContext context) {
    final clientListViewModel = context.watch<ClienteListViewmodel>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        title: Text(' Lista de clientes'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              final newCliente = ClienteModel(
                id: '001',
                name: 'Cesar',
                email: 'i4.0@gmail.com',
                phone: '0999998821',
              );
              // ClienteListViewmodel
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: clientListViewModel.clienteVista.isEmpty
          ? Center(child: Text('no hay clientes registrados'))
          : ListView.builder(
              itemCount: clientListViewModel.clienteVista.length,
              itemBuilder: (context, index) {
                final client = clientListViewModel.clienteVista[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(client.name.isNotEmpty ? client.name[0] : ''),
                    ),
                    title: Text(client.name),
                    //subtitle: Text(client.name),
                    subtitle: Text('${client.email}\n${client.phone}'),
                    trailing: IconButton(
                      onPressed: () {
                        clientListViewModel.eliminarClientes(client.id);
                      },
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
