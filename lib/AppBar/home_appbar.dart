import 'package:flutter/material.dart';

AppBar myAppBar() {
  return AppBar(
    backgroundColor: Colors.cyan,
    elevation: 0,
    title: const Text(
      "Mine",
      style: TextStyle(
        fontWeight: FontWeight.w300,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
    ],
  );
}
