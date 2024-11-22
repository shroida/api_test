import 'dart:convert';
import 'package:api_test/data/model.dart';
import 'package:http/http.dart' as http;

class Webservices {
  Future<List<User>> getSomeRandomUsers(int countOfUsers) async {
    try {
      // Step 1: Send HTTP request
      final response = await http.get(
        Uri.parse('https://randomuser.me/api/?results=$countOfUsers'),
      );
      print('Raw Response: ${response.body}'); // show data as String

      if (response.statusCode == 200) {
        // Step 2: Parse response body from String to JSON

        final responseBody = jsonDecode(response.body) as Map<String, dynamic>;
        print(
            'Parsed JSON before results: $responseBody'); //{results :[{gender: male,.....}]}

        final results = responseBody['results'] as List;
        print('results list: $results'); // get list of data from json

        // Convert each JSON object into a User instance
        return results.map((userJson) => User.fromJson(userJson)).toList();
      } else {
        throw Exception(
            'Failed to fetch users. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred while fetching users: $e');
    }
  }
}
