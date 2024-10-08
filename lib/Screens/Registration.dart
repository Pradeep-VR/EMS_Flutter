
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  final TextEditingController empIdController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController secretCodeController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController designationController = TextEditingController();
  final TextEditingController empRoleController = TextEditingController();
  final TextEditingController remarksController = TextEditingController();

  Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('REGISTRATION',style: TextStyle(
        fontWeight: FontWeight.bold,
        letterSpacing: 3,
      ),),backgroundColor: Colors.blueAccent,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: empIdController,
              decoration: const InputDecoration(labelText: 'Employee ID',border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: firstNameController,
              decoration: const InputDecoration(labelText: 'First Name',border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: middleNameController,
              decoration: const InputDecoration(labelText: 'Middle Name',border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: lastNameController,
              decoration: const InputDecoration(labelText: 'Last Name',border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: secretCodeController,
              decoration: const InputDecoration(labelText: 'Secret Code',border: OutlineInputBorder()),
              obscureText: true, // For password-like inputs
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: departmentController,
              decoration: const InputDecoration(labelText: 'Department',border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: designationController,
              decoration: const InputDecoration(labelText: 'Designation',border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: empRoleController,
              decoration: const InputDecoration(labelText: 'Employee Role',border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: remarksController,
              decoration: const InputDecoration(labelText: 'Remarks',border: OutlineInputBorder()),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.deepPurple, width: 1), // Outline color and width
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), // Button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                  onPressed: () {

                  },
                  child: const Text(
                    'SAVE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.deepPurple, width: 1), // Outline color and width
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), // Button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                  onPressed: () {
                    empIdController.clear();
                    firstNameController.clear();
                    middleNameController.clear();
                    lastNameController.clear();
                    secretCodeController.clear();
                    departmentController.clear();
                    designationController.clear();
                    empRoleController.clear();
                    remarksController.clear();
                  },
                  child: const Text(
                    'CLEAR',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
