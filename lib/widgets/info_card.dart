import 'package:job_search_ui/models/models.dart';

import 'widgets.dart';

class InfoCard extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final Color color;
  final double radius;

  const InfoCard({
    Key key,
    @required this.width,
    @required this.height,
    @required this.child,
    this.color = Colors.white,
    this.radius = 30.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: color,
      ),
      child: child,
    );
  }
}
