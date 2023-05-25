import 'package:flutter/material.dart';
import 'package:it_builders_exercise_3/main.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({
    super.key,
    required this.todo,
  });

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Todo details'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 56,
                foregroundImage: NetworkImage(
                  todo.imageUrl,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                todo.title,
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  todo.description,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));
  }
}
