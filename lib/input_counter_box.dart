import 'package:flutter/material.dart';

class InputCounterBox extends StatefulWidget {
  // Attributres
  final Color color;
  final void Function(int l) onLengthChanged;

  // Construct
  const InputCounterBox({
    super.key,
    required this.color,
    required this.onLengthChanged,
  });

  @override
  State<InputCounterBox> createState() => _InputCounterBoxState();
}

class _InputCounterBoxState extends State<InputCounterBox> {
  int _length = 0;
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  _length = text.length;
                });
                widget.onLengthChanged(_length);
              },
              controller: textController,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    textController.clear();
                    setState(() {
                      _length = 0;
                      widget.onLengthChanged(_length);
                    });
                  },
                  child: Icon(
                    Icons.clear,
                  ),
                ),
                hintText: 'Text eingeben',
                border: OutlineInputBorder(),
              ),
            ),
            Text('Länge: $_length'),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
