
import 'package:ems/Screens/Attendance.dart';
import 'package:ems/Screens/ManageEmployee.dart';
import 'package:ems/Screens/Reports.dart';
import 'package:ems/Screens/Request.dart';
import 'package:ems/Screens/TaskAssigning.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomWidgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME',style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
        ),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info Container
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blueAccent),
              ),
              child: Row(
                children: [
                  // Icon (Profile Picture placeholder)
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange[100],
                    child: const Icon(Icons.person, size: 40, color: Colors.orange),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TL073',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Admin'),
                      Text('Pradeep@teamliftss.com'),
                      Text('Software / Developer'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // Grid of Icon Buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  if (true) // Attendance button isVisible: true
                    CustomIconButton(
                      isVisible: true,
                      icon: Icons.assignment_turned_in,
                      label: 'Attendance',
                      color: Colors.black,
                      onPressEvent: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Attendance()),
                        );
                      },
                    ),
                  if (true) // Request button isVisible: true
                    CustomIconButton(
                      isVisible: true,
                      icon: Icons.request_page,
                      label: 'Request',
                      color: Colors.black,
                      onPressEvent: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Request()),
                        );
                      },
                    ),
                  if (true) // Manage Employees button isVisible: true
                    CustomIconButton(
                      isVisible: true,
                      icon: Icons.manage_accounts,
                      label: 'Manage Employees',
                      color: Colors.black,
                      onPressEvent: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ManageEmployee()),
                        );
                      },
                    ),
                  if (true) // Reports button isVisible: true
                    CustomIconButton(
                      isVisible: true,
                      icon: Icons.bar_chart,
                      label: 'Reports',
                      color: Colors.black,
                      onPressEvent: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Reports()),
                        );
                      },
                    ),
                  if (true) // Task Assigning button isVisible: true
                    CustomIconButton(
                      isVisible: true,
                      icon: Icons.assignment_ind,
                      label: 'Task Assigning',
                      color: Colors.black,
                      onPressEvent: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TaskAssigning()),
                        );
                      },
                    ),
                ],
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  '© 2024 EMS. All Rights Reserved.',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

}
