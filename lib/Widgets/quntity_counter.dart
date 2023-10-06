import 'package:flutter/material.dart';

class QuntityCounter extends StatefulWidget {
  const QuntityCounter({super.key});

  @override
  State<QuntityCounter> createState() => _QuntityCounterState();
}

class _QuntityCounterState extends State<QuntityCounter> {
  int _quntity = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: Row(
        children: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              setState(() {
                _quntity += 1;
              });
            },
          ),
          const SizedBox(width: 5),
          Text("$_quntity"),
          const SizedBox(width: 5),
          GestureDetector(
            child: const Icon(Icons.remove),
            onTap: () {
              if (_quntity > 0) {
                setState(() {
                  _quntity -= 1;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
