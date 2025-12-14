import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:split_easy/features/todo/models/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState()) {
    on<TodoAdd>(_onTodoAdd);
    on<TodoRemove>(_onTodoRemove);
    on<TodoToggle>(_onTodoToggle);
  }

  void _onTodoAdd(TodoAdd event, Emitter<TodoState> emit) {
    final newTodos = List<Todo>.from(state.todos)..add(event.todo);
    emit(TodoState(todos: newTodos));
  }

  void _onTodoRemove(TodoRemove event, Emitter<TodoState> emit) {
    final newTodos = List<Todo>.from(state.todos)..remove(event.todo);
    emit(TodoState(todos: newTodos));
  }

  void _onTodoToggle(TodoToggle event, Emitter<TodoState> emit) {
    final newTodos = state.todos.map((todo) {
      if (todo.id == event.todo.id) {
        return todo.copyWith(isCompleted: !todo.isCompleted);
      }
      return todo;
    }).toList();
    emit(TodoState(todos: newTodos));
  }
}
