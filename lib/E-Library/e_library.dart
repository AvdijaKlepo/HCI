// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:hci/HomePage/homepage.dart';
import 'package:hci/Reading/read.dart';
import 'package:hci/Settings/settings.dart';
import 'package:hci/Social/social.dart';
import 'package:hci/utils/style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ELibrary extends StatelessWidget {
  const ELibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[50],
        foregroundColor: black,
        title: Text(
          'Vlastita biblioteka',
          style: heading1,
        ),
      ),
      backgroundColor: Colors.orange[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '2023 READING CHALLENGE',
                  style: heading1,
                ),
              ),
            ),
            Divider(
              thickness: 1,
              indent: 100,
              endIndent: 100,
              color: black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.menu_book_rounded),
                SizedBox(
                  width: xsmall,
                ),
                Column(
                  children: [
                    const Text('Pročitali ste 3 od 30 knjiga ove godine.'),
                    SizedBox(
                      height: xsmall,
                    ),
                    LinearPercentIndicator(
                      width: 250.0,
                      lineHeight: 20,
                      barRadius: const Radius.circular(20),
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.2,
                      progressColor: Colors.orange[400],
                      backgroundColor: Colors.orange[100],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: medium,
            ),
            const Text('Vaše police'),
            SizedBox(
              height: medium,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(26),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/darktower3.jpg'),
                            fit: BoxFit.cover),
                      ),
                      width: 200,
                      height: 250,
                      margin: EdgeInsets.only(right: medium),
                    ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const Read(image: 'assets/images/darktower3.jpg'))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Column(
                    children: [
                      const Text('Pročitano'),
                      SizedBox(
                        height: medium,
                      ),
                      const Text('3 knjige'),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(26),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/darktower2.jpg'),
                            fit: BoxFit.cover),
                      ),
                      width: 200,
                      height: 250,
                      margin: EdgeInsets.only(right: medium),
                    ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const Read(image: 'assets/images/darktower2.jpg'))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Column(
                    children: [
                      const Text('Trenutno čitam'),
                      SizedBox(
                        height: medium,
                      ),
                      const Text('3 knjige'),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(26),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/darktower4.jpg'),
                            fit: BoxFit.cover),
                      ),
                      width: 200,
                      height: 250,
                      margin: EdgeInsets.only(right: medium),
                    ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const Read(image: 'assets/images/darktower4.jpg'))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Column(
                    children: [
                      const Text('Želim da čitam'),
                      SizedBox(
                        height: medium,
                      ),
                      const Text('3 knjige'),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: 1,
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
