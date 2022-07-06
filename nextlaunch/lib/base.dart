import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nextlaunch/launches.dart';
import 'newsfeed.dart';

class BaseWidget extends StatefulWidget {
  const BaseWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    NewsFeed(),
    Launches(),
    Text('Third tab'),
    Text('Fourth tab'),
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
        backgroundColor: const Color(0x5b69d4),
        items: const <Widget>[
          Icon(Icons.newspaper_rounded, size: 30),
          Icon(Icons.rocket_launch_rounded, size: 30),
        ],
        // currentIndex: _selectedTab,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
