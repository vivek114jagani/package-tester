// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:package_tester/FlutterHTML/html_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HTMLExample(),
    );
  }
}
