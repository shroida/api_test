import 'package:api_test/data/model.dart';
import 'package:flutter/material.dart';

class GenderAgeUser extends StatelessWidget {
  const GenderAgeUser({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Gender: ${user.gender}',
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(width: 16),
        Text(
          'Age: ${user.age}',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
