import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nic/screens/education.dart';
import 'package:nic/screens/news.dart';
import 'package:nic/widgets/card_widget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 2.0),
        children: [
          CustomCard(
            title: "Education",
            callBack: () {
              Get.to(() => const EducationScreen(),
                  transition: Transition.cupertino);
            },
            icon: LineIcons.bookReader,
            isNotify: false,
          ),
          CustomCard(
            title: "Complains",
            callBack: () {},
            icon: LineIcons.comment,
            isNotify: false,
          ),
          CustomCard(
            title: "News",
            callBack: () {
              Get.to(() => const NewsScreen(),
                  transition: Transition.cupertino);
            },
            icon: Icons.feed,
            isNotify: true,
          ),
          CustomCard(
            title: "Notification",
            callBack: () {},
            icon: LineIcons.bell,
            isNotify: true,
          ),
          CustomCard(
            title: "Profile",
            callBack: () {},
            icon: LineIcons.user,
            isNotify: false,
          ),
          CustomCard(
            title: "Policy",
            callBack: () {},
            icon: Icons.policy,
            isNotify: false,
          ),
          CustomCard(
            title: "Settings",
            callBack: () {},
            icon: LineIcons.cog,
            isNotify: false,
          ),
          CustomCard(
            title: "Logout",
            callBack: () {},
            icon: Icons.exit_to_app,
            isNotify: false,
          ),
        ],
      ),
    );
  }
}
