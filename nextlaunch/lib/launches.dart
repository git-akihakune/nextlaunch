import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LaunchesView extends StatefulWidget {
  const LaunchesView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LaunchesViewState();
}

class _LaunchesViewState extends State<LaunchesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NeumorphicText('LaunchesView'),
      ),
    );
  }
}
