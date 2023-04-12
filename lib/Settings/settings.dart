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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: text,
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/n1.jpg'),
                    ),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),
              Text(
                'Avdija Klepo',
                style: p2,
              ),
            ],
          ),
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
          Row(
            children: [
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
            ],
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              child: Text(
                "Promijeni lozinku",
                style: p1,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        scrollable: true,
                        title: Text(
                          'Promijena lozinke',
                          style: p2,
                        ),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  style: p2,
                                  decoration: InputDecoration(
                                    labelText: 'Nova Lozinka',
                                    icon: Icon(Icons.password),
                                  ),
                                ),
                                TextFormField(
                                  style: p2,
                                  decoration: InputDecoration(
                                    labelText: 'Potvrdi novu lozinku',
                                    icon: Icon(Icons.password),
                                  ),
                                ),
                                TextFormField(
                                  style: p2,
                                  decoration: InputDecoration(
                                    labelText: 'Stara lozinka',
                                    icon: Icon(Icons.password),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.brown),
                              child: Text(
                                "Promijeni",
                                style: p1,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                                // your code
                              })
                        ],
                      );
                    });
              },
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
              const SizedBox(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoginPage())),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                child: Text(
                  'Odjava',
                  style: p1,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                child: Text(
                  "Tehnička podrška",
                  style: p1,
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          scrollable: true,
                          title: Text(
                            'Opišite problem i naši operateri će biti sa vama uskoro',
                            style: p2,
                          ),
                          content: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    style: p2,
                                    decoration: InputDecoration(
                                      labelText: 'Opis problema',
                                      icon: Icon(Icons.help_center),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.brown),
                                child: Text(
                                  "Pošalji zahtjev",
                                  style: p1,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  // your code
                                })
                          ],
                        );
                      });
                },
              ),
            ],
          ),
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
                icon: SizedBox(
                  height: 38,
                  width: 38,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const HomePage())),
                    icon: const Icon(Icons.home_rounded),
                  ),
                ),
                label: 'Naslovna'),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 38,
                  width: 38,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const ELibrary())),
                    icon: const Icon(Icons.menu_book_outlined),
                  ),
                ),
                label: 'E-Biblioteka'),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 38,
                  width: 38,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Social())),
                    icon: const Icon(Icons.people_outline),
                  ),
                ),
                label: 'Mreža'),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 38,
                  width: 38,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Settings())),
                    icon: const Icon(Icons.settings_outlined),
                  ),
                ),
                label: 'Postavke'),
          ]),
    );
  }
}
