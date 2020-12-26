import 'package:job_search_ui/utils/utils.dart';

import 'widgets.dart';

class ContentList extends StatelessWidget {
  final String title;

  // final T List<T> data;
  final List<JobApplication> data;
  final Color color;
  final double opacity;

  const ContentList({
    Key key,
    @required this.title,
    @required this.data,
    this.color = Colors.white,
    this.opacity = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 280.0,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: ListView.builder(
            itemCount: data.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: InfoCard(
                  width: 180.0,
                  height: 280.0,
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoCard(
                          width: 50.0,
                          height: 50.0,
                          radius: 20.0,
                          color: Colors.white.withOpacity(0.9),
                          child: Center(
                            child: SvgPicture.asset(
                              data[index].logo,
                              width: 20.0,
                              height: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          data[index].companyName,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          data[index].position,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 25.0),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${data[index].salary}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: ' / year',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
