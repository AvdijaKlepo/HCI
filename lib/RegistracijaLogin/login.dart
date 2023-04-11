import 'package:flutter/material.dart';
import 'package:hci/RegistracijaLogin/registration.dart';
import 'package:hci/utils/style.dart';

import '../HomePage/homepage.dart';

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
              Text('Dobrodošli u Pathfinder', style: pBoldW),
              SizedBox(
                height: xsmall,
              ),
              SizedBox(
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                      hintStyle: p1,
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      isDense: true),
                ),
              ),
              SizedBox(
                height: xsmall,
              ),
              SizedBox(
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                      hintStyle: p2,
                      border: OutlineInputBorder(),
                      labelText: 'Lozinka'),
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
                      child: Text(
                        'Login',
                        style: p1,
                      ),
                    ),
                  )
                ],
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Nemate račun? ', style: p2),
                    SizedBox(
                      width: xsmall,
                    ),
                    Text(
                      'Registrirajte se',
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
                  ],
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RegistrationPage())),
              ),
            ],
          ),
        ));
  }
}
