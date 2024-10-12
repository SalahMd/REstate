import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/colors.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/view/screens/auth/login/login.dart';
import 'package:restate/view/screens/home/home_page.dart';
import 'package:restate/view/screens/settings/settings.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({super.key});

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  late List<Widget> listPage;
  int currentPage = 1;

  changePage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  void initState() {
    listPage = [Login(), HomePage(), Settings()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        activeIcon: Icons.add,
        icon: Icons.add,
        backgroundColor: LightAppColors.primaryColor,
        foregroundColor: LightAppColors.whiteColor,
        overlayColor: LightAppColors.blackColor,
        overlayOpacity: 0.5,
        direction: SpeedDialDirection.up,
        buttonSize: Size(50.w, 50.h),
        childPadding: EdgeInsets.symmetric(vertical: 10.h),
        spacing: 20.h,
        closeManually: false,
        childrenButtonSize: Size(65.w, 65.h),
        children: [
          SpeedDialChild(
            backgroundColor: LightAppColors.primaryColor,
            labelWidget: Container(
              child: Text(
                "for sale".tr,
                style: TextStyles.w50013White(context),
              ),
            ),
            shape: const CircleBorder(),
            onTap: () {},
            child: Icon(Icons.task_outlined,
                size: 18.sp, color: LightAppColors.whiteColor),
          ),
          SpeedDialChild(
              backgroundColor: LightAppColors.primaryColor,
              labelWidget: Container(
                child: Text(
                  "for rent".tr,
                  style: TextStyles.w50013White(context),
                ),
              ),
              shape: const CircleBorder(),
              onTap: () {},
              child: Icon(Icons.work_outline,
                  size: 18.sp, color: LightAppColors.whiteColor),
              label: "job".tr)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        color: Color.fromARGB(249, 28, 29, 48),
        shape: CircularNotchedRectangle(),
        height: 65,
        notchMargin: 3.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              splashColor: Color.fromARGB(
                249,
                28,
                29,
                48,
              ),
              shape: CircleBorder(),
              hoverColor: Color.fromARGB(249, 28, 29, 48),
              highlightColor: Color.fromARGB(249, 28, 29, 48),
              minWidth: 40.w,
              onPressed: () {
                changePage(0);
              },
              child: Column(
                children: [
                  Icon(Icons.person_outline,
                      size: 18.sp,
                      color: currentPage == 0
                          ? LightAppColors.primaryColor
                          : Colors.white),
                  Text(
                    "profile".tr,
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: currentPage == 0
                            ? LightAppColors.primaryColor
                            : Colors.white),
                  )
                ],
              ),
            ),
            MaterialButton(
              splashColor: Color.fromARGB(
                249,
                28,
                29,
                48,
              ),
              shape: CircleBorder(),
              hoverColor: Color.fromARGB(249, 28, 29, 48),
              highlightColor: Color.fromARGB(249, 28, 29, 48),
              minWidth: 40.w,
              onPressed: () {
                changePage(1);
              },
              child: Column(
                children: [
                  Icon(Icons.home_outlined,
                      size: 18.sp,
                      color: currentPage == 1
                          ? LightAppColors.primaryColor
                          : Colors.white),
                  Text(
                    "home".tr,
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: currentPage == 1
                            ? LightAppColors.primaryColor
                            : Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            MaterialButton(
              splashColor: Color.fromARGB(
                249,
                28,
                29,
                48,
              ),
              padding: EdgeInsetsDirectional.only(start: 10),
              shape: CircleBorder(),
              hoverColor: Color.fromARGB(249, 28, 29, 48),
              highlightColor: Color.fromARGB(249, 28, 29, 48),
              minWidth: 40.w,
              onPressed: () {
                // controllerImp.changePage(2);
              },
              child: Column(
                children: [
                  Icon(Icons.notifications,
                      size: 18.sp,
                      color: currentPage == 2
                          ? LightAppColors.primaryColor
                          : Colors.white),
                  Text(
                    "notifications".tr,
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: currentPage == 2
                            ? LightAppColors.primaryColor
                            : Colors.white),
                  )
                ],
              ),
            ),
            MaterialButton(
              autofocus: false,
              splashColor: Color.fromARGB(
                249,
                28,
                29,
                48,
              ),
              shape: CircleBorder(),
              hoverColor: Color.fromARGB(249, 28, 29, 48),
              highlightColor: Color.fromARGB(249, 28, 29, 48),
              minWidth: 40.w,
              onPressed: () {
                changePage(2);
              },
              child: Column(
                children: [
                  Icon(Icons.settings_outlined,
                      size: 18.sp,
                      color: currentPage == 3
                          ? LightAppColors.primaryColor
                          : Colors.white),
                  Text(
                    "settings".tr,
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: currentPage == 3
                            ? LightAppColors.primaryColor
                            : Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: listPage.elementAt(currentPage),
    );
  }
}
