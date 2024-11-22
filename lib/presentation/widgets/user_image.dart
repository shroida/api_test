import 'package:api_test/data/model.dart';
import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(user.picture),
    );
  }
}
