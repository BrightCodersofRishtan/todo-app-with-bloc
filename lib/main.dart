import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/blocs/bloc_export.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/screens/screens.dart';

void main() {
BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc()..add(
        AddTask(
          task: Task(title: 'Task1'),),),
      child: MaterialApp(
        title: 'todo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TaskScreen(),
      ),
    );
  }
}
