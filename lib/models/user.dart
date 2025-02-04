class User {
  String nombre;
  int edad;
  List<String> profesiones;

  User({required this.nombre, required this.edad, required this.profesiones});

  User copywith({String? nombre, int? edad, List<String>? profesiones}) => User(
      nombre: nombre ?? this.nombre,
      edad: edad ?? this.edad,
      profesiones: profesiones ?? this.profesiones);
}
