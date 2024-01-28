import 'package:democracy_app_sample/pages/drawer_menu_screen.dart';
import 'package:democracy_app_sample/theme/colors.dart';
import 'package:democracy_app_sample/utils/constants.dart';
import 'package:democracy_app_sample/widget/custiom_app_bar.dart';
import 'package:democracy_app_sample/widget/drawer_widgets/devider.dart';
import 'package:democracy_app_sample/widget/drawer_widgets/drawer_list_tiles.dart';
import 'package:democracy_app_sample/widget/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const CustomAppBar(title: 'Profile'),
      body: Column(
        children: [
          buildProfileHeader(),
          buildProfileInfo(),
        ],
      ),
    );
  }

  Widget buildProfileHeader() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 24),
            // color: Colors.blueAccent,
            child: ClipOval(
              child: SvgPicture.asset(
                profilePicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 21),
          const TextDesign(
            text: "Carol Perry",
            fontSize: 24,
            textColor: Colors.white,
            fontWeight: FontWeight.w900,
          ),
          const SizedBox(height: 8),
          const TextDesign(
            text: "+91 8374728384",
            fontSize: 14,
            textColor: Colors.white,
            fontWeight: FontWeight.w200,
          )
        ],
      ),
    );
  }

  Widget buildProfileInfo() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Personal
            SizedBox(height: 36),
            TextDesign(
              text: "Personal",
              fontSize: 12,
              textColor: subTextColor,
              fontWeight: FontWeight.w500,
            ),
            DrawerListTiles(
                ic: profileIc, tags: "Profile", color: Colors.white),
            DeviderLine(),
            DrawerListTiles(
                ic: locationIc, tags: "Address", color: Colors.white),
            SizedBox(height: 36),
            TextDesign(
              text: "Other",
              fontSize: 12,
              textColor: subTextColor,
              fontWeight: FontWeight.w500,
            ),
            DrawerListTiles(
                ic: deleteAcIc, tags: "Delete Account", color: Colors.red),
            DeviderLine(),
            DrawerListTiles(ic: logoutIc, tags: "Logout", color: Colors.white),
          ],
        ),
      ),
    );
  }
}
