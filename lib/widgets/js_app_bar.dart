import 'widgets.dart';

class JsAppBar extends StatelessWidget {
  final IconData icon;
  final double width;
  final double height;

  const JsAppBar({ Key key, @required this.icon, this.width = 50.0, this.height = 50.0 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(icon, size: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
