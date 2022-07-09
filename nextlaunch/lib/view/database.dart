import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nextlaunch/utils/layout.dart';

class DatabaseView extends StatefulWidget {
  const DatabaseView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DatabaseViewState();
}

class _DatabaseViewState extends State<DatabaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NextLaunchAppBar(tabName: 'Database'),
      body: Center(
        child: NeumorphicText('Database'),
      ),
    );
  }
}
