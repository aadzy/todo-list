import 'package:flutter/material.dart';
import 'package:todo/utils/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red,
        content : Container(
          height: 125,
          child:  Column(
            children: [
               TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add new task",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  //cancel
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MyButton(text: "Cancel", onPressed: onCancel),
                  ),

                  const SizedBox(width: 20),

                  //save
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MyButton(text: "Save", onPressed: onSave),
                  ),


                ],
              )
            ],
          ),
        ));
  }
}
