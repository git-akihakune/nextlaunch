import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'base.dart';

void main() {
  runApp(const NextLaunchApp());
}

class NextLaunchApp extends StatelessWidget {
  const NextLaunchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'NextLaunch',
      themeMode: ThemeMode.system,
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFFFFFFF),
        accentColor: Color(0x006200ee),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0x00121212),
        accentColor: Color(0x001e1e1e),
        lightSource: LightSource.topLeft,
      ),
      home: BaseWidget(),
    );
  }
}
