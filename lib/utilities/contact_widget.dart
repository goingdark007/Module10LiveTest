import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {

  final String name;
  final String phoneNumber;

  const Contacts({
    super.key,
    required this.name,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      child: ListTile(

        leading: Icon(Icons.person),

        title: Text(name,
          style: TextStyle(
              color: Colors.red
          ),
        ),

        subtitle: Text(phoneNumber),

        trailing: Icon(Icons.phone, color: Colors.blue),

      ),
    );
  }
}