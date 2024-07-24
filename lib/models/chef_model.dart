class ChefModel {
  final String nombre;
  final String apellido;
  final String telefono;
  final String email;
  final String password;
  final String token;
  final String id;
  final bool confirmEmail;
  final bool status;
  final String especialidad;
  final String trayectoria;
  final Map<String, dynamic> foto;
  final String createdAt;
  final String updatedAt;
  final String v;


  ChefModel({
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.email,
    required this.password,
    required this.token,
    required this.id,
    required this.confirmEmail,
    required this.status,
    required this.especialidad,
    required this.trayectoria,
    required this.foto,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory ChefModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'nombre': String nombre,
        'apellido': String apellido,
        'telefono': String telefono,
        'email': String email,
        'password': String password,
        'token': String token,
        '_id': String id,
        'confirmEmail': bool confirmEmail,
        'status': bool status,
        'especialidad': String especialidad,
        'trayectoria': String trayectoria,
        'foto': Map<String, dynamic> foto,
        'createdAt': String createdAt,
        'updatedAt': String updatedAt,
        '__v': String v,
      } => ChefModel(
        nombre: nombre,
        apellido: apellido,
        telefono: telefono,
        email: email,
        password: password,
        token: token,
        id: id,
        confirmEmail: confirmEmail,
        status: status,
        especialidad: especialidad,
        trayectoria: trayectoria,
        foto: foto,
        createdAt: createdAt,
        updatedAt: updatedAt,
        v: v,
      ),
      _ => throw Exception('Invalid ChefModel.fromJson')
    };
  }
}