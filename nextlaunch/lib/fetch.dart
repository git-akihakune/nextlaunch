// Tutorial; https://docs.flutter.dev/cookbook/networking/background-parsing
import 'package:http/http.dart' as http;

Future<http.Response> fetchData(http.Client client) async {
  return client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
}
