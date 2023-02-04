// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_interpolation_to_compose_strings
part of '../header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => alert.alertConfirmExit(context),
      child: material.Scaffold(
        backgroundColor: material.Colors.blueGrey.shade100,
        body: Stack(children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 400,
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [defBlue, defBlack1],
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: global.getWidth(context),
                        child: Row(
                          children: [
                            Icon(material.Icons.home, color: defWhite, size: 25),
                            Text(
                              " Home",
                              style: textStyling.styleText5(20, defWhite),
                            ),
                            Spacer(),
                            material.PopupMenuButton<String>(
                              icon: Icon(material.Icons.more_vert_rounded, color: defWhite),
                              onSelected: (value) async {
                                if (value == "Logout") {
                                  alert.alertLogout(context);
                                }
                              },
                              itemBuilder: (BuildContext context) => widget.getChoicePopUp(context),
                            ),
                          ],
                        ),
                      ),
                      widget.getBoxNamed(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
