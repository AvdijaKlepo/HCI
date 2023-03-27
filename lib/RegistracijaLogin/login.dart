import 'package:flutter/material.dart';

import '../HomePage/homepage.dart';
import 'registration.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              const Text('Dobrodošli u Pathfinder',
                  style: TextStyle(fontSize: 20)),
              const SizedBox(
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      isDense: true),
                ),
              ),
              const SizedBox(
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Lozinka'),
                  obscureText: true,
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: ((context) => const HomePage()))),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown[600]),
                      child: const Text('Login'),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const RegistrationPage()))),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown[600]),
                      child: const Text('Registracija'),
                    ),
                  )
                ],
              ),
              const Text('Nemate račun? Registrirajte se na dugme iznad'),
            ],
          ),
        ));
  }
}
