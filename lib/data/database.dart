import 'package:hive/hive.dart';

class ToDoDatabase{

  List toDoList = [];

  //reference the box
  final _mybox = Hive.box('mybox');

  //create initial data
  void createInitialData(){
    toDoList = [
      ["Make tutorial",false],
      ["Do Exercise",false]
    ];
  }
  //load data
  void loadData(){
    toDoList = _mybox.get("TODOLIST");
  }

  //update database
  void updateData(){
    _mybox.put("TODOLIST", toDoList);
  }
}