import 'package:flutter/material.dart';
import 'package:hci/HomePage/homepage.dart';
import 'package:hci/utils/style.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                hintStyle: p2,
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
      backgroundColor: Colors.orange[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Istraži po žanru',
                  style: heading1,
                ),
              ),
            ),
            Divider(
              endIndent: 150,
              indent: 150,
              color: black,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Pregledajte nova izdanja, najčitanije knjige, citate, liste i \n                 drugo u ovim popularnim žanrovima',
                  style: p5,
                ),
              ),
            ),
            SizedBox(
              height: medium,
            ),
            InkWell(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/fantasy.jpg'),
                            fit: BoxFit.fill),
                      ),
                      width: 180,
                      height: 180,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 0, 2.0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/hf.jpeg'),
                            fit: BoxFit.fill),
                      ),
                      width: 180,
                      height: 180,
                    ),
                  ),
                ],
              ),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage())),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text(
                      'Fantazija',
                      style: p2,
                    ),
                  ),
                  SizedBox(
                    width: medium,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Text(
                      'Historijska fikcija',
                      style: p2,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/mystery.jpg'),
                            fit: BoxFit.fill),
                      ),
                      width: 180,
                      height: 180,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 0, 2.0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/sf.jpg'),
                            fit: BoxFit.fill),
                      ),
                      width: 180,
                      height: 180,
                    ),
                  ),
                ],
              ),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage())),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text(
                      'Misterija',
                      style: p2,
                    ),
                  ),
                  SizedBox(
                    width: medium,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Text(
                      'Znanstvena fantastika',
                      style: p2,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage())),
              child: Text(
                'Preskoči',
                style: p1,
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            )
          ],
        ),
      ),
    );
  }
}
