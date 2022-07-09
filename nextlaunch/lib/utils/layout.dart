import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nextlaunch/utils/models.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'dart:io' show Platform;

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
      color: Colors.transparent,
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

class ArticleCard extends StatelessWidget {
  final Article article;
  const ArticleCard({Key? key, required this.article}) : super(key: key);

  void _onPressed() async {
    final Uri _url = Uri.parse(article.url);
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  String articleDate() {
    final DateTime _date = DateTime.parse(article.updatedAt);
    return timeago.format(_date);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 15.0),
        child: Center(
          child: NeumorphicButton(
            onPressed: () => _onPressed(),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${article.newsSite} - ${articleDate()}',
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            article.title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (!(Platform.isAndroid || Platform.isIOS))
                            Text(
                              article.summary,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                        ],
                      ),
                    )),
                    Neumorphic(
                      style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(10),
                        ),
                        depth: 10,
                        intensity: 0.5,
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          article.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
