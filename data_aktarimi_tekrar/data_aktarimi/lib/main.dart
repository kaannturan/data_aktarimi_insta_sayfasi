import 'package:flutter/material.dart';

import 'register/register_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black87,
          appBarTheme: AppBarTheme(color: Colors.black87)),
      home: RegisterView(),
    );
  }
}
