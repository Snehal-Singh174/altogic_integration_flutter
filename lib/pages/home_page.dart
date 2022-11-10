import 'package:altogic/altogic.dart';
import 'package:atlogic_integration/main.dart';
import 'package:atlogic_integration/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final User user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 34,
            width: 264,
            margin: const EdgeInsets.only(
              left: 15,
              right: 16,
            ),
            child: const Text(
              "Welcome to Altogic",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          SizedBox(
            height: 70.0,
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                "User: ${user.mailOrPhone}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              onTapSignOut(context);
            },
            child: const Text('SignOut'),
          )
        ],
      ),
    );
  }

  void onTapSignOut(context) async {
    await client.auth.signOut();
    Navigator.push(context, MaterialPageRoute(builder:  (context) => const Login()));
  }
}
