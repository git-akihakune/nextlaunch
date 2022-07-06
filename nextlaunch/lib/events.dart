import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EventsView extends StatefulWidget {
  const EventsView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EventsViewState();
}

class _EventsViewState extends State<EventsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NeumorphicText('Events'),
      ),
    );
  }
}
