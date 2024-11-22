import 'package:api_test/data/model.dart';
import 'package:flutter/material.dart';

class UserCityCountry extends StatelessWidget {
  const UserCityCountry({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Text('${user.city}, ${user.country}',
        style: const TextStyle(fontSize: 16));
  }
}
