// ignore_for_file: file_names, prefer_const_constructors, avoid_print
part of '../../header.dart';

class NavigatorPane extends StatefulWidget {
  const NavigatorPane({Key? key}) : super(key: key);
  @override
  NavigatorPaneState createState() => NavigatorPaneState();
}

class NavigatorPaneState extends State<NavigatorPane> {
  var activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      // appBar: NavigationAppBar(
      //   automaticallyImplyLeading: false,
      //   title: Container(
      //     alignment: Alignment.centerLeft,
      //     child: Text(
      //       "  E-Central Desktop App",
      //       style: textStyling.styleText6(24, defWhite),
      //     ),
      //   ),
      //   backgroundColor: defBlack1,
      // ),
      pane: NavigationPane(
        selected: activeMenu,
        scrollController: ScrollController(),
        displayMode: PaneDisplayMode.compact,
        header: GestureDetector(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "E-Central Desktop App",
              style: textStyling.styleText5(20, defBlue),
            ),
          ),
        ),
        items: [
          PaneItem(icon: Icon(FluentIcons.home), title: Text("Home")),
          PaneItem(icon: Icon(FluentIcons.database), title: Text("Master Data")),
          PaneItem(icon: Icon(material.Icons.person), title: Text("Users")),
          PaneItem(icon: Icon(material.Icons.password), title: Text("Karyawan")),
        ],
        onChanged: ((value) {
          setState(() => activeMenu = value);
        }),
      ),
      content: getActiveMenu(),
    );
  }

  getActiveMenu() {
    switch (activeMenu) {
      case 0:
        return HomePage();
      case 1:
        return TabBar();
      default:
        return HomePage();
    }
  }
}
