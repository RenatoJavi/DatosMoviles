import 'package:clientes_application_1/modelo/cliente_model.dart';
import 'package:flutter/material.dart';

class ClienteListViewmodel extends ChangeNotifier {
  final List<ClienteModel> _clientes = [
    ClienteModel(
      id: '001',
      name: 'Ana Garcia',
      email: 'ana.g@example.com',
      phone: '0987654321',
    ),
    ClienteModel(
      id: '002',
      name: 'Luis Pérez',
      email: 'luis.p@example.com',
      phone: '0912345678',
    ),
    ClienteModel(
      id: '003',
      name: 'Marta Díaz',
      email: 'marta.d@example.com',
      phone: '0923456789',
    ),
    ClienteModel(
      id: '004',
      name: 'Jorge Soto',
      email: 'jorge.s@example.com',
      phone: '0934567890',
    ),
    ClienteModel(
      id: '005',
      name: 'Laura Gómez',
      email: 'laura.g@example.com',
      phone: '0945678901',
    ),
    ClienteModel(
      id: '006',
      name: 'Carlos Ruiz',
      email: 'carlos.r@example.com',
      phone: '0956789012',
    ),
    ClienteModel(
      id: '007',
      name: 'Sofía Castro',
      email: 'sofia.c@example.com',
      phone: '0967890123',
    ),
    ClienteModel(
      id: '008',
      name: 'Andrés Morales',
      email: 'andres.m@example.com',
      phone: '0978901234',
    ),
    ClienteModel(
      id: '009',
      name: 'Paula Herrera',
      email: 'paula.h@example.com',
      phone: '0989012345',
    ),
    ClienteModel(
      id: '010',
      name: 'Diego Torres',
      email: 'diego.t@example.com',
      phone: '0990123456',
    ),
  ];
  List get clienteVista => List.unmodifiable(_clientes);

  void agregarClientes(ClienteModel newCliente) {
    _clientes.add(newCliente);
    notifyListeners();
  }

  void eliminarClientes(ClienteModel clienteId) {
    _clientes.removeWhere((identificacion) => (identificacion.id == clienteId));
    notifyListeners();
  }
}
