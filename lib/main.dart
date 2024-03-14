import 'package:flutter/material.dart';

import 'equations_solver_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giải phương trình bậc nhất',
      home: EquationSolverPage(),
    );
  }
}

