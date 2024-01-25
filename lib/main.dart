import 'package:chat/pages/login.dart';
import 'package:chat/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    
  ); 
  runApp(const ScholarChat());
}
//comment 1
class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login':(context) => Login(),
        'register':(context) =>Register(),
      },
      initialRoute: 'login',
    );
  }
}