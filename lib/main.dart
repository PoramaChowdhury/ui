import 'package:flutter/material.dart';

void main() {
  runApp(const TasktugasApp());
}

class TasktugasApp extends StatelessWidget {
  const TasktugasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SignUpScreen(),
        ),
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 40),
          // Logo and welcome text
          const Center(
            child: Column(
              children: [
                Icon(Icons.task_alt, size: 48, color: Colors.green), // Replace with actual logo
                SizedBox(height: 10),
                Text(
                  'Welcome to Tasktugas',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Sign up or login below to manage your project, task, and productivity',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          // Tabs for Login/Sign Up
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Login', style: TextStyle(color: Colors.grey)),
              ),
              const Text('|', style: TextStyle(color: Colors.grey)),
              TextButton(
                onPressed: () {},
                child: const Text('Sign Up', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Input fields
          const InputField(icon: Icons.person, hintText: 'Your name'),
          const SizedBox(height: 16),
          const InputField(icon: Icons.email, hintText: 'Enter your email'),
          const SizedBox(height: 16),
          const InputField(icon: Icons.lock, hintText: 'Enter your password', obscureText: true),
          const SizedBox(height: 16),
          const InputField(icon: Icons.lock, hintText: 'Confirm your password', obscureText: true),
          const SizedBox(height: 16),
          // Password requirements
          const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.grey, size: 16),
              SizedBox(width: 8),
              Text('At least 8 characters', style: TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 4),
          const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.grey, size: 16),
              SizedBox(width: 8),
              Text('At least 1 number', style: TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 4),
          const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.grey, size: 16),
              SizedBox(width: 8),
              Text('Both upper and lower case letters', style: TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 20),
          // Terms and conditions
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (bool? value) {},
              ),
              const Expanded(
                child: Text(
                  'By agreeing to the terms and conditions, you are entering into a legally binding contract with the service provider.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Sign up button
          SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;

  const InputField({
    Key? key,
    required this.icon,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}
