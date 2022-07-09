import 'package:http/http.dart' as http;
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:nextlaunch/utils/layout.dart';
import 'package:nextlaunch/utils/models.dart';
import 'package:nextlaunch/utils/fetch.dart';

class NewsFeedView extends StatefulWidget {
  const NewsFeedView({Key? key}) : super(key: key);

  @override
  State<NewsFeedView> createState() => _NewsFeedViewState();
}

class _NewsFeedViewState extends State<NewsFeedView> {
  static const _pageSize = 20;
  var client = http.Client();

  final PagingController<int, Article> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchNewsFeed(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchNewsFeed(int pageKey) async {
    try {
      final newItems = await fetchArticles(client, pageKey, _pageSize);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NextLaunchAppBar(tabName: 'News'),
      body: PagedListView<int, Article>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Article>(
          itemBuilder: (context, item, index) => ArticleCard(article: item),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
