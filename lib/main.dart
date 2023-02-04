// ignore_for_file: prefer_const_constructors
import 'package:fluent_ui/fluent_ui.dart';
import 'package:windowsapp/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        accentColor: Colors.blue,
        iconTheme: const IconThemeData(size: 24),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        accentColor: Colors.blue,
        iconTheme: const IconThemeData(size: 24),
      ),
      home: NavigatorPane(),
    );
  }
}
