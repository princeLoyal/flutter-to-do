class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
});

  static List<ToDo> todosList() {
    return [
      ToDo(id: '01', todoText: 'Morning Excircise', isDone: true),
      ToDo(id: '02', todoText: 'Buy Groceries', isDone: true),
      ToDo(id: '03', todoText: 'Check Emails', isDone: true),
      ToDo(id: '03', todoText: 'Check Emails', isDone: true),
      ToDo(id: '04', todoText: 'Team Meeting'),
      ToDo(id: '05', todoText: 'Work on mobile apps for 3 hours'),
      ToDo(id: '06', todoText: 'Dinner with Jenny'),
    ];
  }
}