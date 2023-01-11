import 'package:flutter/material.dart';

import 'api_client.dart';
import 'user.dart';

import 'appbutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const FlutterLogo(size: 72),
              AppButton(
                operation: 'GET',
                operationColor: Colors.lightGreen,
                description: 'Fetch users',
                onPressed: () async {
                  var response =
                      await ApiClient().get('/users').catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');

                  var users = userFromJson(response);
                  debugPrint('Users count: ' + users.length.toString());
                },
              ),
              AppButton(
                operation: 'POST',
                operationColor: Colors.lightBlue,
                description: 'Add user',
                onPressed: () async {
                  var user = User(
                    name: 'Afzal Ali',
                    qualifications: [
                      Qualification(
                          degree: 'Master', completionData: '01-01-2025'),
                    ],
                  );

                  var response = await ApiClient()
                      .post('/users', user)
                      .catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');
                },
              ),
              AppButton(
                operation: 'PUT',
                operationColor: Colors.orangeAccent,
                description: 'Edit user',
                onPressed: () async {
                  var id = 2;
                  var user = User(
                    name: 'Afzal Ali',
                    qualifications: [
                      Qualification(
                          degree: 'Ph.D', completionData: '01-01-2028'),
                    ],
                  );

                  var response = await ApiClient()
                      .put('/users/$id', user)
                      .catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');
                },
              ),
              AppButton(
                operation: 'DEL',
                operationColor: Colors.red,
                description: 'Delete user',
                onPressed: () async {
                  var id = 2;
                  var response = await ApiClient()
                      .delete('/users/$id')
                      .catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
