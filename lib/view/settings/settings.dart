import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';
import 'package:restate/core/helpers/extensions.dart';
import 'package:restate/core/routing/routes.dart';
import 'package:restate/view/widgets/list_tile.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                    child: Text("account".tr,
                        style: TextStyles.w40014grey(context))),
              ),
              Container(
                  width: Dimensions.screenWidth(context),
                  //  height: 150.h,
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primaryContainer),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: ListTiles(
                              leadingIcon: Icons.edit_outlined,
                              trailingIcon: Icons.arrow_forward_ios_outlined,
                              listText: "editprofile".tr),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: ListTiles(
                              leadingIcon: Icons.lock_outline,
                              trailingIcon: Icons.arrow_forward_ios_outlined,
                              listText: "changepassword".tr),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: ListTiles(
                              leadingIcon: Icons.favorite_outline_outlined,
                              trailingIcon: Icons.arrow_forward_ios_outlined,
                              listText: "favourite".tr),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: ListTiles(
                              leadingIcon: Icons.calendar_month_outlined,
                              trailingIcon: Icons.arrow_forward_ios_outlined,
                              listText: "myappointments".tr),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: ListTiles(
                              leadingIcon: Icons.post_add_outlined,
                              trailingIcon: Icons.arrow_forward_ios_outlined,
                              listText: "myposts".tr),
                        ),
                      ])),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                  child: Text("general".tr,
                      style: TextStyles.w40014grey(context))),
              Container(
                width: Dimensions.screenWidth(context),
                padding: EdgeInsets.symmetric(vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primaryContainer),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.changeLanguage);
                      },
                      child: ListTiles(
                          leadingIcon: Icons.language_outlined,
                          trailingIcon: Icons.arrow_forward_ios_outlined,
                          listText: "language".tr),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.changeMode);
                      },
                      child: ListTiles(
                          leadingIcon: Icons.dark_mode_outlined,
                          trailingIcon: Icons.arrow_forward_ios_outlined,
                          listText: "appmode".tr),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ListTiles(
                          leadingIcon: Icons.logout_outlined,
                          trailingIcon: Icons.arrow_forward_ios_outlined,
                          listText: "logout".tr),
                    ),
                    GestureDetector(
                      onTap: () {
                        // animationedAlertWithActions(
                        //     AppAnimations.info,
                        //     "doyoureallywanttodeleteaccount".tr,
                        //     controller.deleteAccount);
                        // controller.update();
                      },
                      child: ListTiles(
                          leadingIcon: Icons.delete_outline,
                          trailingIcon: Icons.arrow_forward_ios_outlined,
                          listText: "deletemyaccount".tr),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                  child: Text("helpcenter".tr,
                      style: TextStyles.w40014grey(context))),
              Container(
                width: Dimensions.screenWidth(context),
                padding: EdgeInsets.symmetric(vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primaryContainer),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTiles(
                        leadingIcon: Icons.info_outline,
                        trailingIcon: Icons.arrow_forward_ios_outlined,
                        listText: "abouttheapp".tr),
                    GestureDetector(
                      onTap: () {},
                      child: ListTiles(
                          leadingIcon: Icons.report_outlined,
                          trailingIcon: Icons.arrow_forward_ios_outlined,
                          listText: "report".tr),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
