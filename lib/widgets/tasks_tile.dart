import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String task;
  final Function checkBoxCallback;
  final Function longPressedCallback;
  TaskTile({this.task,this.isChecked ,this.checkBoxCallback,this.longPressedCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          task,
          style: TextStyle(
            decoration: isChecked? TextDecoration.lineThrough : null,
          ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged:checkBoxCallback//toggleCheckBoxState,
      ),
      onLongPress: longPressedCallback,
    );
  }
}




//Checkbox(
//value: isChecked,
//onChanged: toggleCheckBoxState,            // Yaha callback deni pdegi ( to the taskTile ) cuz yaha setState nahi use kar skte.
//// Task tile me setState lgjayega as that is stateful
////Yaha Checkbox ko bhi stful bnaskte the but then we couldnt have changed the Text decoration, on basis of the checkbox.
//);