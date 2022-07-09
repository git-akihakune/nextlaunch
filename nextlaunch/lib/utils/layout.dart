import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NextLaunchButton extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(55);

  final Icon icon;
  const NextLaunchButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () {},
      style: const NeumorphicStyle(
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: icon,
        color: Theme.of(context).colorScheme.surface,
      ),
    );
  }
}

class NextLaunchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String tabName;
  const NextLaunchAppBar({Key? key, required this.tabName}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(85);

  @override
  Widget build(BuildContext context) {
    return NeumorphicAppBar(
      title: Text(
        tabName,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto',
        ),
      ),
      actions: <Widget>[
        NextLaunchButton(
            icon: Icon(Icons.search_rounded,
                color: Theme.of(context).colorScheme.onSurface)),
        NextLaunchButton(
            icon: Icon(
          Icons.settings_outlined,
          color: Theme.of(context).colorScheme.onSurface,
        )),
      ],
    );
  }
}
