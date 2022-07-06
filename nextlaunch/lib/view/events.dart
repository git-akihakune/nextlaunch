import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

class EventsView extends StatefulWidget {
  const EventsView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EventsViewState();
}

class _EventsViewState extends State<EventsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlassAppBar(
        blur: 0.01,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        title: const GlassText(
          'Events',
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
        child: NeumorphicText('Events'),
      ),
    );
  }
}
