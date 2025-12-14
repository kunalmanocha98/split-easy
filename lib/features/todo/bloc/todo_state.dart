part of 'todo_bloc.dart';

class TodoState extends Equatable {
  const TodoState({
    this.todos = const [],
  });

  final List<Todo> todos;

  @override
  List<Object> get props => [todos];
}
