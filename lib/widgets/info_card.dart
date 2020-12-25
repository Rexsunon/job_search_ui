import 'package:job_search_ui/models/models.dart';

import 'widgets.dart';

class InfoCard extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const InfoCard({Key key, @required this.width, @required this.height, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
