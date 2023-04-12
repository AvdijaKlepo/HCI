import 'package:flutter/material.dart';
import 'package:hci/RecommendedScreen/rec_screen.dart';

import '../utils/style.dart';
import 'login.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset('assets/icons/logo.png'),
              ),
              Text(
                'Registracija',
                style: p2,
              ),
              SizedBox(
                height: xsmall,
              ),
              SizedBox(
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Ime',
                    labelStyle: p2,
                  ),
                ),
              ),
              SizedBox(
                height: xsmall,
              ),
              SizedBox(
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Prezime',
                      labelStyle: p2),
                ),
              ),
              SizedBox(
                height: xsmall,
              ),
              SizedBox(
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Email',
                      labelStyle: p2),
                ),
              ),
              SizedBox(
                height: xsmall,
              ),
              SizedBox(
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Lozinka',
                      labelStyle: p2),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: xsmall,
              ),
              SizedBox(
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Potvrdi lozinku',
                    labelStyle: p2,
                  ),
                  obscureText: true,
                ),
              ),
              const Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const RecommendedScreen())),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[600]),
                    child: Text(
                      'Registriraj račun',
                      style: p1,
                    ),
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
                        const Text(
                          'Logirajte se',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
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
      ),
    );
  }
}
