import 'package:flutter/material.dart';

class EquationSolverPage extends StatefulWidget {
  const EquationSolverPage({super.key});

  @override
  State<EquationSolverPage> createState() => _EquationSolverPageState();
}

class _EquationSolverPageState extends State<EquationSolverPage> {
  TextEditingController aController = TextEditingController();
  TextEditingController bController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: aController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Nhập hệ số a',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: bController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Nhập hệ số b',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                solveEquation();
              },
              child: const Text('Giải'),
            ),
            const SizedBox(height: 20.0),
            Text(
              result,
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  void solveEquation() {
    double a = double.tryParse(aController.text) ?? 0;
    double b = double.tryParse(bController.text) ?? 0;

    if (a == 0) {
      setState(() {
        result = 'Phương trình không phải là phương trình bậc nhất';
      });
    } else {
      double x = -b / a;
      setState(() {
        result = 'Nghiệm của phương trình là: x = $x';
      });
    }
  }
}