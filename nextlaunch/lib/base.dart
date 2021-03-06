import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nextlaunch/view/launches.dart';
import 'view/newsfeed.dart';
import 'view/events.dart';
import 'view/database.dart';

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedTab),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        color: Colors.deepPurpleAccent.shade400,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.newspaper_rounded, size: 30),
          Icon(Icons.rocket_launch_rounded, size: 30),
          Icon(Icons.event_rounded, size: 30),
          Icon(Icons.storage_rounded, size: 30),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
