import 'package:api_test/data/model.dart';
import 'package:api_test/presentation/widgets/gender_age_user.dart';
import 'package:api_test/presentation/widgets/user_email.dart';
import 'package:api_test/presentation/widgets/user_image.dart';
import 'package:api_test/presentation/widgets/user_name.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber.shade100,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          UserImage(user: user),
          UserName(user: user),
          const SizedBox(height: 8),
          UserEmail(user: user),
          const SizedBox(height: 8),
          GenderAgeUser(user: user),
          const SizedBox(height: 8),
          Text(
            '${user.city}, ${user.country}',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
