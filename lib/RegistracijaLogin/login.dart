import 'package:flutter/material.dart';
import 'package:hci/RegistracijaLogin/registration.dart';
import 'package:hci/utils/style.dart';

import '../HomePage/homepage.dart';

bool isCheked = false;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.brown;
      }
      return Colors.black26;
    }

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
                      border: const OutlineInputBorder(),
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
                      border: const OutlineInputBorder(),
                      labelText: 'Lozinka'),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Zapamti me',
                      style: p2,
                    ),
                    Checkbox(
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isCheked,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheked = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
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
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.deepOrangeAccent),
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
