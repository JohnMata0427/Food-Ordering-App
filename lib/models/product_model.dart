class Product {
  late String nombre, categoria, descripcion, createdAt, updatedAt, v;
  late double precio;
  late int cantidad;
  late bool estado;
  late Map<String, String> foto;

  Product({
    required this.nombre,
    required this.categoria,
    required this.descripcion,
    required this.precio,
    required this.cantidad,
    required this.estado,
    required this.foto,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'nombre': String nombre,
        'categoria': String categoria,
        '        descripcion': String descripcion,
        'precio': double precio,
        'cantidad': int cantidad,
        'estado': bool estado,
        'foto': Map<String, String> foto,
      } =>
        Product(
            nombre: nombre,
            categoria: categoria,
            descripcion: descripcion,
            precio: precio,
            cantidad: cantidad,
            estado: estado,
            foto: foto),
      _ => throw Exception('Invalid ChefModel.fromJson')
    };
  }
}
