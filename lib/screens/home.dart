import 'package:job_search_ui/widgets/widgets.dart';

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
      body: Center(
        child: Text("Hello, search ui"),
      ),
    );
  }
}
