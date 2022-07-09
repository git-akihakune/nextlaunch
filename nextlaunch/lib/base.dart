import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nextlaunch/view/launches.dart';
import 'package:nextlaunch/view/newsfeed.dart';
import 'package:nextlaunch/view/events.dart';
import 'package:nextlaunch/view/database.dart';

class BaseWidget extends StatefulWidget {
  const BaseWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    NewsFeedView(),
    LaunchesView(),
    EventsView(),
    DatabaseView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedTab),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        color: Theme.of(context).colorScheme.inverseSurface,
        animationDuration: const Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.newspaper_rounded,
              size: 30, color: Theme.of(context).colorScheme.surface),
          Icon(Icons.rocket_launch_rounded,
              size: 30, color: Theme.of(context).colorScheme.surface),
          Icon(Icons.event_rounded,
              size: 30, color: Theme.of(context).colorScheme.surface),
          Icon(Icons.storage_rounded,
              size: 30, color: Theme.of(context).colorScheme.surface),
        ],
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
      ),
    );
  }
}
