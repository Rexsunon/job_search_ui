import 'widgets.dart';

class MainHeaderText extends StatelessWidget {
  final String text;

  const MainHeaderText({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }
}
