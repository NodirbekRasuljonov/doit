import 'package:hive/hive.dart';
part 'task_info.g.dart';

@HiveType(typeId: 0)
class Task{
  @HiveField(0)
  String task;
  @HiveField(1)
  String urgent;
  Task({required this.task,required this.urgent});
}