class Program {
  final String id;
  final String name;
  final String description;
  final String category;
  final List<Task> tasks;

  Program({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.tasks,
  });

  factory Program.fromJson(Map<String, dynamic> json) {
    var tasksJson = json['tasks'] as List;
    List<Task> tasks = tasksJson.map((t) => Task.fromJson(t)).toList();

    return Program(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      category: json['category'],
      tasks: tasks,
    );
  }
}

class Task {
  final String title;
  final bool completed;

  Task({required this.title, required this.completed});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'],
      completed: json['completed'],
    );
  }
}