import 'package:flutter/material.dart';
import 'package:hci/utils/style.dart';

class BookSample extends StatelessWidget {
  const BookSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        foregroundColor: black,
        title: const Text('The Dark Tower: The Gunslinger \n Stephen King'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Chapter One',
              style: heading1,
            ),
          ),
          const Text(
              'The man in black fled across the desert, and the gunslinger followed. \n'),
          const Text(
              'The desert was the apotheosis of all deserts, huge, standing to the sky for what looked like eternity in all directions. It was white and blinding and waterless and without feature save for the faint, cloudy haze of the mountains which sketched themselves on the horizon and the devil-grass which brought sweet dreams, nightmares, death. An occasional tombstone sign pointed the way, for once the drifted track that cut its way through the thick crust of alkali had been a highway. Coaches and buckas had followed it. The world had moved on since then. The world had emptied.')
        ],
      ),
    );
  }
}
