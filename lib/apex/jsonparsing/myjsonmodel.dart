class MyJson {
  String? name;
  String? surname;
  String? city;

  MyJson({required this.name, required this.surname, required this.city});

  factory MyJson.fromJson(Map<String, dynamic> json) {
    return MyJson(
      name: json['name'],
      surname: json['surname'],
      city: 'ciity',
    );
  }
}
