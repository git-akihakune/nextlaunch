import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nextlaunch/utils/layout.dart';

class NewsFeedView extends StatefulWidget {
  const NewsFeedView({Key? key}) : super(key: key);

  @override
  State<NewsFeedView> createState() => _NewsFeedViewState();
}

class _NewsFeedViewState extends State<NewsFeedView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NextLaunchAppBar(tabName: 'News'),
      body: Center(child: Text('NewsFeedView')),
    );
  }
}
