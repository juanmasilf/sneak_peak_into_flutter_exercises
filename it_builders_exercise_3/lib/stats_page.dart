import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({
    super.key,
    required this.numberOfTodos,
  });

  final int numberOfTodos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stats'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Number of todos',
              ),
              Text(
                '$numberOfTodos',
                style: const TextStyle(fontSize: 32),
              ),
            ],
          ),
        ));
  }
}
