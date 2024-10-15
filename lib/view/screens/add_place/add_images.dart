import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:restate/core/constants/colors.dart';
import 'package:restate/core/functions/dimenesions.dart';

class AddImages extends StatefulWidget {
  const AddImages({super.key});

  @override
  State<AddImages> createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {
  List images = [];

  Future<void> pickImage() async {
    if (images.length < 10) {
      final picker = ImagePicker();
      XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          images.add(File(pickedImage.path));
        });
        print(pickedImage.path);
      } else {
        print("Image picking canceled");
      }
    } else {
      // await alert("can'taddimages".tr);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: Dimensions.screenWidth(context),
        height: 180.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  return index == images.length || images.isEmpty
                      ? GestureDetector(
                          onTap: () {
                            pickImage();
                          },
                          child: Container(
                            width: 100.w,
                            height: 80.h,
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 35.sp,
                              color: LightAppColors.greyColor,
                            ),
                          ),
                        )
                      : Stack(
                          children: [
                            Container(
                              width: 120.w,
                              height: 180.h,
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.file(
                                  File(images[index]
                                      .path), // Access the path property if it exists
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ).animate().fade().scale(curve: Curves.slowMiddle),
                            PositionedDirectional(
                              start: 12.w,
                              top: 3.h,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    images.removeAt(index);
                                  });
                                },
                                child: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.red[800],
                                ),
                              ),
                            ),
                          ],
                        );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
