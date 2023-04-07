import 'package:flutter/material.dart';
import 'package:hci/BookDetails/book_details.dart';
import 'package:hci/E-Library/e_library.dart';
import 'package:hci/NewsPage/newspage.dart';
import 'package:hci/Settings/settings.dart';
import 'package:hci/Social/social.dart';
import 'package:hci/components/label.dart';
import 'package:hci/utils/style.dart';

import '../RecommendedBooks/rec.dart';
import '../components/trending.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange[100],
        title: SizedBox(
          width: double.infinity,
          height: 40,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Title, author or ISBN',
                prefixIcon: const Icon(Icons.search_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none)),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Label(text: 'News', style: heading1),
            ),
            const News(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Label(text: 'Recommended books', style: heading1),
            ),
            RecommendedBooks(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Label(text: 'Trending books', style: heading1),
            ),
            TrendingBooks()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange[100],
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home_rounded),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ELibrary())),
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
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Settings())),
                  icon: const Icon(Icons.settings_outlined),
                ),
                label: 'Settings'),
          ]),
    );
  }
}

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      width: 500,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 35, 10, 10),
        child: SizedBox(
          width: 250,
          child: InkWell(
            child: Expanded(
              child: Container(
                height: double.infinity,
                width: 150,
                decoration: BoxDecoration(border: Border.all(width: 0.5)),
                child: Image.asset(
                  'assets/images/upcoming.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NewsPage())),
          ),
        ),
      ),
    );
  }
}
