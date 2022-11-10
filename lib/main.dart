import 'package:altogic/altogic.dart';
import 'package:atlogic_integration/pages/register_page.dart';
import 'package:flutter/material.dart';

late AltogicClient client;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  client = createClient(
      'https://c1-india.altogic.com/e:636d44ec5c1df876e548bf5f',
      '93847fa2f1cb4142bd0bdbaff68d95bd');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Altogic Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Register(),
    );
  }
}
