import 'models.dart';

class User {
  final String name;
  final String dp;
  final int age;
  final int messageCount;

  User({@required this.name, @required this.dp, @required this.age, this.messageCount = 0});
}