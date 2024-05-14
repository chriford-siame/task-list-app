class TaskList {
  String? id;
  String? title;
  bool isDone;

  TaskList({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  static List<TaskList> taskList() {
    return [
      TaskList(id: "1", title: "Read a book: 40 pages", isDone: true),
      TaskList(id: "2", title: "Buy launch", isDone: true),
      TaskList(id: "3", title: "Check on your girlfriend"),
      TaskList(id: "4", title: "Get your car fixed"),
      TaskList(id: "5", title: "Go watch a movie"),
      TaskList(id: "6", title: "Go to church"),
      TaskList(id: "7", title: "Buy icecream"),
      TaskList(id: "8", title: "Help some people"),
    ];
  }
}