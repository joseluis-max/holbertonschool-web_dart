class User {
  String name;
  int age;
  double height;

  User({required this.name, required this.age, required this.height});
  Map toJson() => {
    'name': name,
    'age': age,
    'height': height,
  };
}