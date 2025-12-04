import 'dart:io';

void main() {
  List<String> tasks = [];
  bool running = true;

  while (running) {
    print("\n=== To-Do Application ===");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter the task to add: ");
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          tasks.add(task);
          print("Task added successfully!");
        } else {
          print("Invalid task!");
        }
        break;

      case '2':
        if (tasks.isEmpty) {
          print("No tasks to remove!");
          break;
        }
        stdout.write("Enter the task number to remove: ");
        int? index = int.tryParse(stdin.readLineSync()!);
        if (index != null && index > 0 && index <= tasks.length) {
          String removedTask = tasks.removeAt(index - 1);
          print("Removed task: $removedTask");
        } else {
          print("Invalid task number!");
        }
        break;

      case '3':
        if (tasks.isEmpty) {
          print("No tasks found!");
        } else {
          print("\nYour Tasks:");
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case '4':
        running = false;
        print("Exiting To-Do App. Goodbye!");
        break;

      default:
        print("Invalid choice! Please enter 1-4.");
    }
  }
}