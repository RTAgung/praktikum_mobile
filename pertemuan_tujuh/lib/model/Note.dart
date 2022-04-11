import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
part 'Note.g.dart';

@HiveType(typeId: 1)
class Note extends HiveObject{
  @HiveField(0)
  String? id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String text;

  Note({required this.title, required this.text, this.id = null});
}