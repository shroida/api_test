class User {
  final String title;
  final String firstName;
  final String lastName;
  final String email;
  final String city;
  final String picture;
  final String country;
  final String gender;
  final int age;

  User({
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.city,
    required this.picture,
    required this.country,
    required this.gender,
    required this.age,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      title: json['name']['title'],
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      email: json['email'],
      country: json['location']['country'],
      city: json['location']['city'],
      gender: json['gender'],
      picture: json['picture']['medium'],
      age: json['dob']['age'],
    );
  }
}
