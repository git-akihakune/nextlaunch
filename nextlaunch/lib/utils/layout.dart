import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

class NextLaunchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String tabName;
  const NextLaunchAppBar({Key? key, required this.tabName}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return GlassAppBar(
      blur: 0.01,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      title: GlassText(
        tabName,
        fontWeight: FontWeight.bold,
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search_rounded),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.settings_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
