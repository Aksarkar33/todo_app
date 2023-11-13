import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: CircleAvatar(
          child: Text(
            'X',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        title: Text(
          'Add Your ToDos',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white60),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 25,
        ),
        shape: const CircleBorder(),
      ),
    );
  }
}
