import 'package:flutter/material.dart';
import 'package:hci/utils/style.dart';

class Read extends StatelessWidget {
  final String image;
  final String text;

  const Read({
    required this.image,
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          text,
          style: heading1,
        ),
        backgroundColor: Colors.orange[100],
        foregroundColor: black,
      ),
      backgroundColor: Colors.orange[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Fantazija',
              style: heading1,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.fill)),
                    width: 170,
                    height: 250,
                  ),
                ),
                SizedBox(
                  width: medium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/darktower4.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 250,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'The Wastelands',
                    style: p2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: Text(
                    'The Wizard and Glass',
                    style: p2,
                  ),
                ),
              ],
            ),
            Divider(
              color: black,
              endIndent: 25,
              indent: 25,
              thickness: 1,
            ),
            Text(
              'Historijska fikcija',
              style: heading1,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/darktower2.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 250,
                  ),
                ),
                SizedBox(
                  width: medium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/hussite3.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 250,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'The Drawing of the Three',
                    style: p2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Text(
                    'Lux Perpetua',
                    style: p2,
                  ),
                ),
              ],
            ),
            Divider(
              color: black,
              endIndent: 25,
              indent: 25,
              thickness: 1,
            ),
            Text(
              'Klasici',
              style: heading1,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/images/purloinedletter.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 250,
                  ),
                ),
                SizedBox(
                  width: medium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/sherlock.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 250,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'The Purloined Letter',
                    style: p2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Text(
                    'The Hounds of the Baskervilles',
                    style: p2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: medium,
            ),
          ],
        ),
      ),
    );
  }
}
