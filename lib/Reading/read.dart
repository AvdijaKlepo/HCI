import 'package:flutter/material.dart';
import 'package:hci/utils/style.dart';

class Read extends StatelessWidget {
  final String image;
  Read({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Biblioteka'),
        backgroundColor: Colors.orange[100],
        foregroundColor: black,
      ),
      backgroundColor: Colors.orange[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    height: 200,
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/darktower4.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 200,
                  ),
                ),
              ],
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
                            image: AssetImage('assets/images/darktower2.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 200,
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/hussite3.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 200,
                  ),
                ),
              ],
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
                            image:
                                AssetImage('assets/images/purloinedletter.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 200,
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/sherlock.jpg'),
                            fit: BoxFit.fill)),
                    width: 170,
                    height: 200,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
