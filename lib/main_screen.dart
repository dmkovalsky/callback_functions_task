import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // state
  int l1 = 0;
  int l2 = 0;
  int l3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 16,
            children: [
              InputCounterBox(
                color: Colors.pink.shade200,
                onLengthChanged: (l) {
                  setState(() {
                    l1 = l;
                    debugPrint(
                      'Text in Box 1 wurde geändert - Textlänge ist $l',
                    );
                  });
                },
              ),
              InputCounterBox(
                color: Colors.blue.shade200,
                onLengthChanged: (l) {
                  setState(() {
                    l2 = l;
                    debugPrint(
                      'Text in Box 2 wurde geändert - Textlänge ist $l',
                    );
                  });
                },
              ),
              InputCounterBox(
                color: Colors.green.shade200,
                onLengthChanged: (l) {
                  setState(() {
                    l3 = l;
                    debugPrint(
                      'Text in Box 3 wurde geändert - Textlänge ist $l',
                    );
                  });
                },
              ),
              Column(
                children: [
                  Text(
                    'Box 1 Länge: $l1',
                    style: TextStyle(
                      color: Colors.pink.shade200,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Icon(Icons.add),
                  Text(
                    'Box 2 Länge: $l2',
                    style: TextStyle(
                      color: Colors.blue.shade200,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Icon(Icons.add),
                  Text(
                    'Box 3 Länge: $l3',
                    style: TextStyle(
                      color: Colors.green.shade200,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '=',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Summe alle Längen: ${l1 + l2 + l3}',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
