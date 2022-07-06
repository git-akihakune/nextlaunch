import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

class DatabaseView extends StatefulWidget {
  const DatabaseView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DatabaseViewState();
}

class _DatabaseViewState extends State<DatabaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlassAppBar(
        blur: 0.01,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        title: const GlassText(
          'Database',
          fontWeight: FontWeight.bold,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: NeumorphicText('Database'),
      ),
    );
  }
}
