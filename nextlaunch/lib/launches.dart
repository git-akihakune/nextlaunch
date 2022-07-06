import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Launches extends StatefulWidget {
  const Launches({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LaunchesState();
}

class _LaunchesState extends State<Launches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NeumorphicText('Launches'),
      ),
    );
  }
}
