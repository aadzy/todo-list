import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference box
  final _MyBox = Hive.box('MyBox');

  //first time open
  void createInitData() {
    toDoList = [
      ["Call Obama", false],
      ["Go to Gym", false],
    ];
  }


  //load data from db
  void loadData() {
    toDoList = _MyBox.get("TODOLIST");

  }

  //update data
  void updateData() {
    _MyBox.put("TODOLIST", toDoList);

  }

}