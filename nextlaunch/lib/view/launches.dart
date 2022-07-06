import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

class LaunchesView extends StatefulWidget {
  const LaunchesView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LaunchesViewState();
}

class _LaunchesViewState extends State<LaunchesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlassAppBar(
        blur: 0.01,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        title: const GlassText(
          'Launches',
          fontWeight: FontWeight.bold,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: NeumorphicText('LaunchesView'),
      ),
    );
  }
}
