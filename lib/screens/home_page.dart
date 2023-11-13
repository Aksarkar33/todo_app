import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/todocontroller.dart';
import 'package:todo_app/screens/dialog_screen.dart';
import 'package:todo_app/screens/todolist.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TodoController _todoController = Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            child: Text(
              'X',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        title: const Text(
          'Add Your ToDos',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white60),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _todoController.todos.length,
        itemBuilder: (context, index) {
          return ListTile(
      leading: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
      title: Text(_todoController.todos[index]),
      trailing: IconButton(onPressed: () {
        _todoController.deleteTodo(index);
      },icon: const Icon(Icons.delete),),
    );
        },
      ),
      bottomNavigationBar: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => DialogPage(),
          );
        },
        child: const Icon(
          Icons.add,
          size: 25,
        ),
        shape: const CircleBorder(),
      ),
    );
  }
}
