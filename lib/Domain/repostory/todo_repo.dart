
/*
Todo Repository

  This repository is used to interact with the todo data source.
  It has the following methods:
  - addTodo: Adds a new todo to the data source
  - updateTodo: Updates an existing todo in the data source
  - deleteTodo: Deletes a todo from the data source
  - getTodos: Retrieves all todos from the data source
*/

import 'package:todo/Domain/model/todo.dart';

abstract class TodoRepository {
  Future<void> addTodo(Todo todo);
  Future<void> updateTodo(Todo todo);
  Future<void> deleteTodo(Todo todo);
  Future<List<Todo>> getTodos();
}

/*

Notes: 

- The TodoRepository class is an abstract class 
  that defines the methods for interacting with the 
  todo data source.
  
- The addTodo method is used to add a new todo to the
  data source. It takes a Todo object as a parameter and
  returns a Future<void>. 

- The updateTodo method is used to update an existing todo
  in the data source. It takes a Todo object as a parameter
  and returns a Future<void>.

- The deleteTodo method is used to delete a todo from the
  data source. It takes a Todo object as a parameter and
  returns a Future<void>.

- The getTodos method is used to retrieve all todos from
  the data source. It returns a Future<List<Todo>>.

- The TodoRepository class is an abstract class, which means
  that it cannot be instantiated directly. Instead, it must
  be implemented by a concrete class that provides the 
  implementation for the methods defined in the abstract class.

*/