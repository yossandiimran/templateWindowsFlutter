// ignore_for_file: prefer_const_constructors
part of 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return mt.MaterialPageRoute(builder: (_) => Login());
      case '/home':
        return mt.MaterialPageRoute(builder: (_) => NavigatorPane());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return mt.MaterialPageRoute(builder: (_) {
      return mt.Scaffold(
        appBar: mt.AppBar(title: const Text("Error")),
        body: const Center(child: Text('Error page')),
      );
    });
  }
}
