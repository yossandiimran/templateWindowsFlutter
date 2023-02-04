// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_interpolation_to_compose_strings, avoid_unnecessary_containers
part of '../header.dart';

class TabBar extends StatefulWidget {
  const TabBar({Key? key}) : super(key: key);
  @override
  TabBarState createState() => TabBarState();
}

class TabBarState extends State<TabBar> {
  var currentIndex = 0;
  var tabs = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => alert.alertConfirmExit(context),
      child: SizedBox(
        height: 600,
        child: TabView(
          currentIndex: currentIndex,
          onChanged: (index) => setState(() => currentIndex = index),
          onNewPressed: () {
            setState(() => tabs++);
          },
          tabs: List.generate(tabs, (index) {
            var i = index + 1;
            return Tab(
              icon: Icon(material.Icons.abc),
              text: Text('Tab $i'),
              closeIcon: material.Icons.close,
              onClosed: () {
                setState(() => tabs--);
              },
            );
          }),
          bodies: List.generate(
            tabs,
            (index) => Container(
              child: Center(child: Text(index.toString())),
            ),
          ),
        ),
      ),
    );
  }
}
