import 'package:flutter/material.dart';

class SeeeccondScreen extends StatefulWidget {
  const SeeeccondScreen({super.key});

  @override
  State<SeeeccondScreen> createState() => _SeeeccondScreenState();
}

class _SeeeccondScreenState extends State<SeeeccondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Congraulatiton! you have reache 10'),
      ),
    );
  }
}
