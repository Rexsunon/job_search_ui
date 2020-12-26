import 'widgets.dart';

class JobApplicationCard extends StatelessWidget {
  final JobOffer offer;

  const JobApplicationCard({Key key, @required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return InfoCard(
      width: screenSize.width,
      height: 100.0,
      color: Colors.amber[500],
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 16.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InfoCard(
              width: 50.0,
              height: 50.0,
              radius: 20.0,
              color: Colors.white.withOpacity(0.6),
              child: Center(
                child: SvgPicture.asset(
                  offer.logo,
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                "New stage \nof your application",
                style: TextStyle(color: Colors.black, fontSize: 15.0),
                // textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 10.0),
            InfoCard(
              width: 70.0,
              height: 88.0,
              color: Colors.black,
              child: Center(
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
