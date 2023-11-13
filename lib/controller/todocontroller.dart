import 'package:get/get.dart';

class TodoController extends GetxController {
   List todos = [];
   void addTodo (String text){
    todos.add(text);
   }
   void deleteTodo(int index){
    todos.removeAt(index);
   }
}