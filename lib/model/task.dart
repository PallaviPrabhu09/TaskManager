//Creating Class
class Task {
  String? task;
  DateTime? time;

//Constructor 1
  Task({this.task, this.time});

//Constructor 2
  factory Task.fromString(String task) {
    return Task(
      task: task,
      time: DateTime.now(),
    );
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      task: map['task'],
      time: DateTime.fromMillisecondsSinceEpoch(map['time']),
    );
  }

  Map<String, dynamic> getMap() {
    return {
      'task': this.task,
      'time': this.time?.millisecondsSinceEpoch,
    };
  }
}
