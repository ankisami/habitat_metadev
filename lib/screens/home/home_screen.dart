import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:habitat_metadev/components/my_bottom_nav_bar.dart';
import 'package:habitat_metadev/constants.dart';
import 'package:habitat_metadev/screens/home/components/body.dart';
// import 'package:flutter_unity/flutter_unity.dart';

class HomeScreen extends StatelessWidget {
  
  // UnityViewController? unityViewController;

  // void onCreated(UnityViewController? controller) {
  //   unityViewController = controller;
  // }

  // void onMessage(UnityViewController? controller, String? message) {
  //   print('Message from Unity: $message');
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      // body: UnityView(
      //   onCreated: onCreated,
      //   onMessage: onMessage,
      // ),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
