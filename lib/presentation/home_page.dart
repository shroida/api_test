import 'package:api_test/data/model.dart';
import 'package:api_test/data/webservices.dart';
import 'package:api_test/presentation/widgets/user_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<User> usersList;
  final webservices = Webservices();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: usersList.length,
              itemBuilder: (context, index) {
                final user = usersList[index];
                return UserCard(user: user);
              },
            ),
    );
  }

  Future<void> fetchUsers() async {
    try {
      usersList = await webservices.getSomeRandomUsers(20);
    } catch (e) {
      debugPrint('Error fetching users: $e');
      usersList = [];
    } finally {
      setState(() {
        isLoading = false; // Stop loading indicator
      });
    }
  }
}
