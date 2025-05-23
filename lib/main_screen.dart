import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
                  debugPrint(
                    'Text in Box 1 wurde geändert - die Anzahl der Zeichen ist $l',
                  );
                },
              ),
              InputCounterBox(
                color: Colors.blue.shade200,
                onLengthChanged: (l) {
                  debugPrint(
                    'Text in Box 2 wurde geändert - die Anzahl der Zeichen ist $l',
                  );
                },
              ),
              InputCounterBox(
                color: Colors.green.shade200,
                onLengthChanged: (l) {
                  debugPrint(
                    'Text in Box 3 wurde geändert - die Anzahl der Zeichen ist $l',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
