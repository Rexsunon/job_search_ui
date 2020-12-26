import 'package:job_search_ui/utils/utils.dart';

import 'screens.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xdfffffff),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: JsAppBar(icon: Icons.menu),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: MainHeaderText(text: "Your Profile"),
            ),
          ),
          SliverToBoxAdapter(
            child: UserDetailsCards(user: user),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 27.0),
            sliver: SliverToBoxAdapter(
              child: JobApplicationCard(offer: jobOffer),
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(title: "Your Application", data: jobApplications),
          )
        ],
      ),
    );
  }
}
