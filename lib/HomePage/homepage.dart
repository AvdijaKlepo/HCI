import 'package:flutter/material.dart';
import 'package:hci/BookList/book_list.dart';
import 'package:hci/E-Library/e_library.dart';
import 'package:hci/NewsPage/newspage.dart';
import 'package:hci/NewsPagesList/news_list.dart';
import 'package:hci/Settings/settings.dart';
import 'package:hci/Social/social.dart';
import 'package:hci/components/label.dart';
import 'package:hci/utils/style.dart';

import '../RecommendedBooks/rec.dart';
import '../TrendingBooks/trending.dart';

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
                hintText: 'Naslov, autor ili ISBN',
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
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
              child: InkWell(
                child: Label(text: 'Članci', style: heading1),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => NewsList())),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: News(),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Label(text: 'Preporučeno', style: heading1),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BookList(
                        text: 'Knjige preporučene vašim pretraživanjima',
                      ))),
            ),
            RecommendedBooks(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Label(text: 'Popularno', style: heading1),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BookList(
                          text: 'Knjige koje su trenutno popularne',
                        ))),
              ),
            ),
            TrendingBooks()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange[100],
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
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
