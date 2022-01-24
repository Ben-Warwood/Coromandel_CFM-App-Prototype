import 'package:flutter/material.dart';
import 'start_page.dart';

class MailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Mail'),
      centerTitle: true,
      backgroundColor: Color(0xFF18171a),
    ),
    body: Center(child: Text('Mail', style: TextStyle(fontSize: 60))),
  );
}