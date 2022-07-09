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
    return Scaffold(
      appBar: const NextLaunchAppBar(tabName: 'News'),
      body: const Center(child: Text('NewsFeedView')),
    );
  }
}
