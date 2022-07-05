import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const NextLaunchApp());
}

class NextLaunchApp extends StatelessWidget {
  const NextLaunchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Next Launch Test app',
      themeMode: ThemeMode.system,
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFFFFFFF),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: NewsFeed(),
    );
  }
}

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: NeumorphicButton(
        onPressed: () {},
        child: const Text('Next Launch'),
      )),
    );
  }
}
