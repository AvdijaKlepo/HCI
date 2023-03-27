import 'package:flutter/material.dart';
import 'package:hci/NewsPage/newspage.dart';

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
      body: Stack(
        children: const [News()],
      ),
    );
  }
}

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 500,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: SizedBox(
          width: 250,
          child: InkWell(
            child: Expanded(
              child: Container(
                height: double.infinity,
                width: 150,
                child: Image.asset('assets/images/upcoming.jpg'),
                decoration: BoxDecoration(border: Border.all(width: 0.5)),
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
