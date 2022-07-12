import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nextlaunch/utils/layout.dart';

class LaunchesView extends StatefulWidget {
  const LaunchesView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LaunchesViewState();
}

class _LaunchesViewState extends State<LaunchesView> {
  final List<Tab> launchTabs = const <Tab>[
    Tab(
      text: 'Upcoming',
    ),
    Tab(
      text: 'Past',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NextLaunchAppBar(tabName: 'Launches'),
        body: DefaultTabController(
          length: launchTabs.length,
          child: Scaffold(
            appBar: TabBar(
              tabs: launchTabs,
              labelColor: Theme.of(context).colorScheme.primary,
              unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
              indicatorColor: Theme.of(context).colorScheme.primary,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              unselectedLabelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              labelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: TabBarView(
              children: launchTabs.map((Tab tab) {
                return Center(
                  child: Text('${tab.text}'),
                );
              }).toList(),
            ),
          ),
        ));
  }
}
