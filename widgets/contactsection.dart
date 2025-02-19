import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  final Key? key;

  ContactSection({this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text('ContactSection Section', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}
