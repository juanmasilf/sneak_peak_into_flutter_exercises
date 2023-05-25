import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:it_builders_exercise_3/stats_page.dart';
import 'package:it_builders_exercise_3/todo_page.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Exercise 3'),
    );
  }
}

/// The first screen of the app
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Counter to keep track of the number of todo items
  int _counter = 0;

  /// List to store the todo items
  final List<Todo> _todos = [];

  /// Function to handle the add button action
  void _addButtonAction() {
    /// Use setState to update the UI
    setState(() {
      /// Increment counter
      _counter++;

      /// Add a new todo item to the list using the current counter value
      /// and a random sentence from the word_generator package
      _todos.add(
        Todo(
          title: 'Todo $_counter',
          description: WordGenerator().randomSentence(10),
          imageUrl: 'https://loremflickr.com/320/240/$_counter',
        ),
      );
    });
  }

  /// Function to handle the remove button action
  void _removeButtonAction() {
    /// Use setState to update the UI
    setState(() {
      /// Decrement counter
      _counter--;

      /// Remove the last todo item from the list
      _todos.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StatsPage(
                    numberOfTodos: _todos.length,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.graphic_eq_outlined),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return ZoomIn(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TodoPage(
                      todo: _todos[index],
                    ),
                  ),
                );
              },
              child: Card(
                child: ListTile(
                    leading: CircleAvatar(
                      foregroundImage: NetworkImage(
                        _todos[index].imageUrl,
                      ),
                    ),
                    title: Text(
                      _todos[index].title,
                    ),
                    subtitle: Text(
                      _todos[index].description,
                      style: const TextStyle(fontSize: 11),
                    )),
              ),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            onPressed: _removeButtonAction,
            tooltip: 'Remove',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            heroTag: 2,
            onPressed: _addButtonAction,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

/// Class to represent a todo item
class Todo {
  const Todo({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final String imageUrl;
}
