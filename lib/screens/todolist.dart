import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/todocontroller.dart';

class TodoList extends StatefulWidget {
   const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
TodoController _todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
      title: Text(_todoController.todos.toString()),
      trailing: IconButton(onPressed: () {
        
      },icon: Icon(Icons.delete),),
    );
  }
}
