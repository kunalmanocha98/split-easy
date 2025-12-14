part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class TodoAdd extends TodoEvent {
  const TodoAdd(this.todo);

  final Todo todo;

  @override
  List<Object> get props => [todo];
}

class TodoRemove extends TodoEvent {
  const TodoRemove(this.todo);

  final Todo todo;

  @override
  List<Object> get props => [todo];
}

class TodoToggle extends TodoEvent {
  const TodoToggle(this.todo);

  final Todo todo;

  @override
  List<Object> get props => [todo];
}
