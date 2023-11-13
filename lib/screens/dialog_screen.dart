import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/todocontroller.dart';

class DialogPage extends StatefulWidget {
   DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
final TextEditingController _textEditingController = TextEditingController();
TodoController controller = Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
  
    return Dialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        insetAnimationCurve: Curves.fastLinearToSlowEaseIn,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            height: 150,
            width: Get.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.amber),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                controller: _textEditingController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {Get.back();},
                    child: const Text(
                      'Cancel',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                    controller.todos.add(_textEditingController.text);
                    _textEditingController.text = "";
                    },
                    child: const Text(
                      'Submit',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ));
  }
}
