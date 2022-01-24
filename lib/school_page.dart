import 'package:flutter/material.dart';
import 'start_page.dart';

class SchoolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('School'),
      centerTitle: true,
      backgroundColor: Color(0xFF18171a),
    ),
    body: Center(child: Text('School', style: TextStyle(fontSize: 60))),
  );
}