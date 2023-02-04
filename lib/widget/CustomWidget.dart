// ignore_for_file: file_names, prefer_const_constructors,, prefer_interpolation_to_compose_strings

part of '../header.dart';

class CustomWidget {
  radiusVal(radius) => Radius.circular(radius);

  getWidgetMenu2({required context, routeName, title, color, icon, colorIcon, menuCode, image}) {
    return GestureDetector(
      onTap: () {
        if (routeName == 'back') {
          Navigator.pop(context);
        } else {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: Container(
        decoration: decCont(defWhite, 20, 20, 20, 20),
        margin: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 5),
        height: material.kToolbarHeight + 30,
        width: global.getWidth(context),
        child: Row(
          children: [
            Container(
              height: material.kToolbarHeight + 30,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(image: image, fit: BoxFit.contain, scale: 0.5),
                color: color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            Spacer(),
            Text(title, textAlign: TextAlign.center, style: textStyling.nunitoBold(16, colorIcon)),
            Spacer(),
          ],
        ),
      ),
    );
  }

  getWidgetMenu3({required context, routeName, title, color, icon, colorIcon, menuCode}) {
    return GestureDetector(
      onTap: () {
        if (routeName == 'back') {
          Navigator.pop(context);
        } else {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: Container(
        decoration: decCont(defWhite, 20, 20, 20, 20),
        margin: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 5),
        height: material.kToolbarHeight + 30,
        width: global.getWidth(context),
        child: Row(
          children: [
            Container(
              height: material.kToolbarHeight + 30,
              width: 70,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Icon(icon, color: defWhite, size: 30),
            ),
            Spacer(),
            Text(title, textAlign: TextAlign.center, style: textStyling.nunitoBold(16, colorIcon)),
            Spacer(),
          ],
        ),
      ),
    );
  }

  decorationContainer1(color, radius) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(radiusVal(radius)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  decorationContainer2(color, radius) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(radiusVal(radius)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  decorationContainerGradient(color1, color2, radius) {
    return BoxDecoration(
      gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [color1, color2]),
      borderRadius: BorderRadius.all(radiusVal(radius)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  decorationGradient3Color(color1, color2, bl, br, tl, tr) {
    return BoxDecoration(
      gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [color1, color2]),
      borderRadius: BorderRadius.only(
        bottomLeft: radiusVal(bl),
        topLeft: radiusVal(tl),
        topRight: radiusVal(tr),
        bottomRight: radiusVal(br),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  decorationGradient4Color(color1, color2, color3, bl, br, tl, tr) {
    return BoxDecoration(
      gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [color1, color2, color3]),
      borderRadius: BorderRadius.only(
        bottomLeft: radiusVal(bl),
        topLeft: radiusVal(tl),
        topRight: radiusVal(tr),
        bottomRight: radiusVal(br),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  decCont(color, double radiusBl, double radiusBr, double radiusTl, double radiusTr) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        bottomLeft: radiusVal(radiusBl),
        bottomRight: radiusVal(radiusBr),
        topLeft: radiusVal(radiusTl),
        topRight: radiusVal(radiusTr),
      ),
    );
  }

  decCont2(color, double radiusBl, double radiusBr, double radiusTl, double radiusTr) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        bottomLeft: radiusVal(radiusBl),
        bottomRight: radiusVal(radiusBr),
        topLeft: radiusVal(radiusTl),
        topRight: radiusVal(radiusTr),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  decCont3(color, double radiusBl, double radiusBr, double radiusTl, double radiusTr) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        bottomLeft: radiusVal(radiusBl),
        bottomRight: radiusVal(radiusBr),
        topLeft: radiusVal(radiusTl),
        topRight: radiusVal(radiusTr),
      ),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    );
  }

  getChoicePopUp(context) {
    return {'Logout', 'Pengaturan'}.map((String choice) {
      return material.PopupMenuItem<String>(
        value: choice,
        child: Row(
          children: [
            Icon(
              choice == "Logout" ? material.Icons.logout : material.Icons.settings,
              color: choice == "Logout" ? defRed : defBlue,
            ),
            Text("  $choice")
          ],
        ),
      );
    }).toList();
  }

  getBoxNamed(context) {
    return Container(
      decoration: widget.decCont(defWhite, 20, 20, 20, 20),
      width: global.getWidth(context),
      padding: EdgeInsets.only(top: 20, right: 100, left: 20, bottom: 20),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Halo,", style: textStyling.nunitoBold(20, defBlack1)),
          Text(
            "Yossandi Imran P",
            style: textStyling.mcLarenBold(20, defBlack1),
          ),
          Text(
            "yossandiimran02@gmail.com",
            style: textStyling.nunitonDef(
              20,
              defBlack1,
            ),
          ),
        ],
      ),
    );
  }

  getImageBgSugar(context) {
    return Positioned(
      top: material.kToolbarHeight * 2,
      bottom: 0,
      right: 0,
      left: material.kToolbarHeight * 15,
      child: Column(
        children: [
          Image.asset("assets/ic1bg.png"),
        ],
      ),
    );
  }
}
