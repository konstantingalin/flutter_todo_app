import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';
import 'package:flutter_todo_app/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;

  const ToDoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
          
        },
        shape: RoundedRectangleBorder (
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: SizedBox(
          height: 35,
          width: 30,
          child: IconButton(
            color: tdRed,
            iconSize: 20,
            icon: const Icon(Icons.cancel_outlined), 
            
            onPressed: () {
      
            },
          ),
        ),
      ),
    );
  }
}