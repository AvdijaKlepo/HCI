import 'package:flutter/material.dart';
import 'package:hci/HomePage/homepage.dart';

import '../utils/style.dart';
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
            SizedBox(
              height: xsmall,
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
            SizedBox(
              height: xsmall,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage())),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown[600]),
                  child: const Text('Registriraj račun'),
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Već imate račun?',
                        style: p2,
                      ),
                      SizedBox(
                        width: xsmall,
                      ),
                      Text(
                        'Logirajte se',
                        style: TextStyle(decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage())),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
