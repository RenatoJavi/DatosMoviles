class ClienteModel {
  final String id;
  final String name;
  final String email;
  final String phone;

  ClienteModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  ClienteModel copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
  }) {
    return ClienteModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }
}
