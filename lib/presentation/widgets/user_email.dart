import 'package:api_test/data/model.dart';
import 'package:flutter/material.dart';

class UserEmail extends StatelessWidget {
  const UserEmail({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Text(
      user.email,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
    );
  }
}
