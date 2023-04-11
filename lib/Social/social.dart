import 'package:flutter/material.dart';
import 'package:hci/HomePage/homepage.dart';
import 'package:hci/Reading/read.dart';
import 'package:hci/Settings/settings.dart';
import 'package:hci/utils/style.dart';

import '../E-Library/e_library.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Socijalna mreža',
          style: heading1,
        ),
        backgroundColor: Colors.orange[100],
        foregroundColor: black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: black, width: 0.5)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
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
                              Text('Avdija Klepo je zapratio Adema Drljevića.'),
                            ],
                          ),
                        ),
                        Text('8 Lajkova | 8 Komentara'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: black, width: 0.5)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                'Avdija Klepo je ostavio komentar ispod rezencije.'),
                          ],
                        ),
                        Text(
                            'Odlična recenzija Meho. Svaki dan postaješ efikasniji kritičar.'),
                        Text('8 Lajkova | 8 Komentara')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 350,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: black, width: 0.5)),
                  child: Column(
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                                child:
                                    Text('Avdija Klepo je ostavio recenziju')),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/darktower1.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              width: 230,
                              height: 240,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text('The Gunslinger'),
                                Row(
                                  children: [
                                    const Icon(Icons.star),
                                    const Icon(Icons.star),
                                    const Icon(Icons.star),
                                    const Icon(Icons.star),
                                    const Icon(Icons.star_border),
                                  ],
                                ),
                                const Text('Stephen King'),
                                ElevatedButton(
                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Read(
                                              image:
                                                  'assets/images/darktower1.jpg'))),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.brown),
                                  child: const Text('Želim čitati'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 220.0),
                        child: const Text('8 Lajkova | 8 Komentara'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.orange[50],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: 2,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange[100],
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage())),
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
