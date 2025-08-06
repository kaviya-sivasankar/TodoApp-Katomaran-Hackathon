// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ToDo App',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const TodoPage(),
//     );
//   }
// }
//
// class TodoPage extends StatefulWidget {
//   const TodoPage({super.key});
//
//   @override
//   State<TodoPage> createState() => _TodoPageState();
// }
//
// class _TodoPageState extends State<TodoPage> {
//   final TextEditingController _controller = TextEditingController();
//   final List<Map<String, dynamic>> _todos = [];
//
//   void _addTodo() {
//     final text = _controller.text.trim();
//     if (text.isEmpty) return;
//
//     setState(() {
//       _todos.add({'task': text, 'done': false});
//       _controller.clear();
//     });
//   }
//
//   void _toggleDone(int index) {
//     setState(() {
//       _todos[index]['done'] = !_todos[index]['done'];
//     });
//   }
//
//   void _removeTodo(int index) {
//     setState(() {
//       _todos.removeAt(index);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7EEF9),
//       appBar: AppBar(
//         title: const Text('ToDo'),
//         backgroundColor: const Color(0xFFE4D0F7),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: const InputDecoration(
//                 hintText: 'Enter a task',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 12),
//             ElevatedButton(
//               onPressed: _addTodo,
//               child: const Text('Add Task'),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _todos.length,
//                 itemBuilder: (context, index) {
//                   final todo = _todos[index];
//                   return Card(
//                     color: const Color(0xFFF2E9FB),
//                     child: ListTile(
//                       leading: Checkbox(
//                         value: todo['done'],
//                         onChanged: (_) => _toggleDone(index),
//                       ),
//                       title: Text(
//                         todo['task'],
//                         style: TextStyle(
//                           fontSize: 16,
//                           decoration: todo['done']
//                               ? TextDecoration.lineThrough
//                               : null,
//                         ),
//                       ),
//                       trailing: IconButton(
//                         icon: const Icon(Icons.delete, color: Colors.red),
//                         onPressed: () => _removeTodo(index),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'login_page.dart'; // ✅ Make sure this path is correct

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(), // 👈 Start from Login Page
    );
  }
}
