/* Todo Model 

  This model is used to represent the todo object. 
  It has the following properties:
  - id: The unique identifier of the todo
  - title: The title of the todo
  - description: The description of the todo
  - isCompleted: A boolean value to indicate if the todo is completed or not

*/

class Todo {
  final String id;
  final String title;
  final String description;
  final bool isCompleted;

  Todo({
    required this.id,
    required this.title,
    required this.description,
     this.isCompleted = false,
  });
  Todo toggleCompleted() {
    return copyWith(isCompleted: !isCompleted);
  }

  Todo copyWith({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  String toString() {
    return 'Todo{id: $id, title: $title, description: $description, isCompleted: $isCompleted}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Todo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          description == other.description &&
          isCompleted == other.isCompleted;

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ description.hashCode ^ isCompleted.hashCode;
}

