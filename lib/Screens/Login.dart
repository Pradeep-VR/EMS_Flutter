
import 'package:ems/Screens/ForgotPassword.dart';
import 'package:ems/Screens/Home.dart';
import 'package:ems/Screens/Registration.dart';
import 'package:ems/Services/ToastService.dart';
import 'package:ems/Widgets/CustomWidgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController empIdController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final Shader linearGradient = const LinearGradient(
    //colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
    colors: <Color>[Colors.amber, Colors.grey],
  ).createShader(const Rect.fromLTWH(150, 100, 100, 100));

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN',style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
        ),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Top section with logo and welcome note
            Column(
              children: [
                Image.asset(
                  'assets/images/teamliftss_logo.png', // Replace with your logo image path
                  height: 100,
                  width: 150,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Teamliftss EMS',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Middle section with form
            Column(
              children: [
                TextField(
                  controller: empIdController,
                  decoration: const InputDecoration(
                    labelText: 'Employee ID',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on _isPasswordVisible state choose the icon
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                  obscureText: !_isPasswordVisible, // Toggle the obscure text
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()),
                        );
                      },
                      child: const Text('Forgot Password?'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.deepPurple, width: 1), // Outline color and width
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), // Button size
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          if (passwordController.text.isNotEmpty &&
                              passwordController.text == "Welcome@123") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Registration()),
                            );
                          }else{
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Home()),
                            );
                            //ToastService.showToast(context, 'Operation Successful!', ToastType.success);
                            //ToastService.showToast(context, 'This is a Warning!', ToastType.warning);
                            ToastService.showToast(context, 'Something went wrong!', ToastType.error);
                          }
                        },
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Bottom section with copyright text
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                '© 2024 EMS. All Rights Reserved.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
