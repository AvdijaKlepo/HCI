import 'package:flutter/material.dart';
import 'package:hci/HomePage/homepage.dart';
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
          'Social',
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
                  decoration:
                      BoxDecoration(border: Border.all(color: black, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Avdija Klepo je zapratio Adema Drljevića.'),
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
                  decoration:
                      BoxDecoration(border: Border.all(color: black, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            'Avdija Klepo je ostavio komentar ispod rezencije Mehe Mustafića.'),
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
                  decoration:
                      BoxDecoration(border: Border.all(color: black, width: 1)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text('Avdija Klepo je ostavio recenziju'),
                          SizedBox(
                            width: medium,
                          ),
                          const Icon(Icons.star),
                          const Icon(Icons.star),
                          const Icon(Icons.star),
                          const Icon(Icons.star),
                          const Icon(Icons.star_border),
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
                              height: 200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text('The Gunslinger'),
                                SizedBox(
                                  height: medium,
                                ),
                                const Text('Stephen King'),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.brown),
                                  child: const Text('Želim čitati'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Text(
                          'The man in black fled across the desert and the Gunslinger followed.'),
                      const Text('8 Lajkova | 8 Komentara')
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
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        backgroundColor: Colors.orange[100],
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage())),
                icon: const Icon(Icons.home_rounded),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ELibrary())),
                icon: const Icon(Icons.book_rounded),
              ),
              label: 'Library'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Social())),
                icon: const Icon(Icons.people_outline),
              ),
              label: 'Social'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Settings())),
                icon: const Icon(Icons.settings_outlined),
              ),
              label: 'Settings'),
        ],
      ),
    );
  }
}
