
import 'package:flutter/material.dart';

class ManageEmployee extends StatelessWidget {
  const ManageEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MANAGE EMPLOYEE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Text('Manage Employee'),
      ),
    );
  }
}
