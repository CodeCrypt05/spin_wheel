import 'package:democracy_app_sample/theme/colors.dart';
import 'package:democracy_app_sample/utils/constants.dart';
import 'package:democracy_app_sample/widget/custiom_app_bar.dart';
import 'package:democracy_app_sample/widget/custom_button.dart';
import 'package:democracy_app_sample/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  String number = "74653845";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: const CustomAppBar(title: 'Profile'),
      body: Column(
        children: [
          buildProfileHeader(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 36, left: 24, right: 24),
                  child: const Column(
                    children: [
                      CustomTextField(
                        label: 'Carol',
                        prefixIc: profileIc,
                        textInputType: TextInputType.name,
                      ),
                      SizedBox(height: 24),
                      CustomTextField(
                        label: '+91 8374728384',
                        prefixIc: contactUsIc,
                        textInputType: TextInputType.number,
                      ),
                      SizedBox(height: 24),
                      CustomTextField(
                        label: 'Enter Date of Birth',
                        prefixIc: presentIC,
                        suffixIc: calendarIC,
                      ),
                      SizedBox(height: 24),
                      CustomTextField(
                        label: 'Select Gender',
                        prefixIc: genderIC,
                        suffixIc: calendarIC,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          ClipOval(
            child: SvgPicture.asset(
              profilePicture,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          const CustomButton(
            height: 46,
            width: 102,
            label: 'Upload',
            ic: uploadIC,
            backgroundColor: backgroundColor,
            borderColor: purpleColor,
            borderRaduis: 12,
            boderWidth: 1,
          )
        ],
      ),
    );
  }
}
