class User {
  int id;
  String name;
  String email;
  bool isChecked;

  User(
      {required this.id,
      required this.name,
      required this.email,
      this.isChecked = false});


  @override
  String toString() {
    // TODO: implement toString
    return '$id -> $name';
  }
}
