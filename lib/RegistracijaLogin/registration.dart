import 'package:flutter/material.dart';
import 'package:hci/HomePage/homepage.dart';

import 'login.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset('assets/icons/logo.png'),
            ),
            const Text(
              'Registracija',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              width: 290,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              width: 290,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Lozinka',
                ),
                obscureText: true,
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage())),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown[600]),
                  child: const Text('Registriraj račun'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage())),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown[600]),
                  child: const Text('Nazad na login'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
