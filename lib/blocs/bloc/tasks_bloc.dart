import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const TasksState()) {
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

  void _onAddTask(AddTask event, Emitter<TasksState> emitter) {
    final state = this.state;
    emit(
      TasksState(
        allTasks: List.from(state.allTasks)..add(event.task),
      ),
    );
  }

  void _onUpdateTask(UpdateTask event, Emitter<TasksState> emitter) {}

  void _onDeleteTask(DeleteTask event, Emitter<TasksState> emitter) {}
}
