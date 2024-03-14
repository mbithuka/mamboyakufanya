import 'package:flutter/material.dart';
import 'package:mamboyakufanya/view/tasks/TypingTextAnimation.dart';

class TaskView extends StatelessWidget {
  const TaskView({
    Key? key,
    this.taskControllerForSubtitle,
    this.taskControllerForTitle,
    this.task,
  }) : super(key: key);

  // Define any variables you need for TaskView
  final TextEditingController? taskControllerForSubtitle;
  final TextEditingController? taskControllerForTitle;
  final Task? task;

  @override
  Widget build(BuildContext context) {
    // Implement the UI for TaskView
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Details'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        //child: Text('Task Details will be shown here'),
        child: TypingTextAnimation(
          text: 'Task Details will be shown here',
        duration: Duration(milliseconds: 2500), // Adjust the duration as needed
        style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

// Define Task class if it's not already defined
class Task {
  // Define properties of Task class
}
