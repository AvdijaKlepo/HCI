import 'package:flutter/material.dart';
import 'package:hci/HomePage/homepage.dart';
import 'package:hci/RegistracijaLogin/login.dart';
import 'package:hci/utils/style.dart';

import '../E-Library/e_library.dart';
import '../Social/social.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        title: const Text(
          'Postavke',
        ),
        foregroundColor: black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Podaci & Sigurnost',
              style: heading3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Podaci  o vašem računu se koriste za verifikaciju vašeg računa i ostaju privatni.',
              style: heading4,
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            color: black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Korisničko ime: ',
              style: p2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'avdija.klepo@edu.fit.ba',
              style: p2,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Lozinka: ',
                  style: p2,
                ),
              ),
              Text(
                '*********',
                style: p2,
              ),
            ],
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            color: black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Povežite vaše račune.',
              style: heading4,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: text,
                    borderRadius: BorderRadius.circular(0),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/fb.png'),
                    ),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),
              Text(
                'Facebook',
                style: heading2,
              ),
              SizedBox(
                width: 200.0,
              ),
              Text(
                'Poveži',
                style: heading4,
              ),
            ],
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            color: black,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginPage())),
              child: Text(
                'Odjava',
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            ),
          )
        ],
      ),
      backgroundColor: Colors.orange[50],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: 3,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange[100],
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage())),
                  icon: const Icon(Icons.home_rounded),
                ),
                label: 'Naslovna'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ELibrary())),
                  icon: const Icon(Icons.menu_book_outlined),
                ),
                label: 'E-Biblioteka'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Social())),
                  icon: const Icon(Icons.people_outline),
                ),
                label: 'Mreža'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Settings())),
                  icon: const Icon(Icons.settings_outlined),
                ),
                label: 'Postavke'),
          ]),
    );
  }
}
