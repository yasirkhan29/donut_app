import 'package:flutter/material.dart';

class SmoothTab extends StatefulWidget {
  const SmoothTab({super.key});

  @override
  State<SmoothTab> createState() => _SmoothTabState();
}

class _SmoothTabState extends State<SmoothTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Smooth"),
    );
  }
}
