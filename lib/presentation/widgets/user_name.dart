import 'package:api_test/data/model.dart';
import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Text(
      '${user.title} ${user.firstName} ${user.lastName}',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
