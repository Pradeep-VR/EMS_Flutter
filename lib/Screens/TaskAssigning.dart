
import 'package:flutter/material.dart';

class TaskAssigning extends StatelessWidget {
  const TaskAssigning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task Assigning',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Text('Task Assigning'),
      ),
    );
  }
}
