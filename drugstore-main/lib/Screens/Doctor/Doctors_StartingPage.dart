import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DoctorsStartingpage extends StatelessWidget {
const DoctorsStartingpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 76, 76, 220), size: 30.sp),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          children: [
            Icon(Icons.monitor_heart_sharp, size: 24.sp),
            SizedBox(width: 10.w),
            Text(
              "PharMisr",
              style: TextStyle(fontSize: 20.sp),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Doctor's Helpline",
                    style: TextStyle(
                      color:  Color.fromARGB(255, 76, 76, 220),
                      fontSize: 25.sp,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    "Medical Advice: Seek professional advice about symptoms or health concerns.",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  SizedBox(height: 60.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/doctors');
                    },
                    child: Container(
                      width: 170.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0XFF012443),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5.r,
                            offset: Offset(0, 2.h),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style:
                              TextStyle(color: Colors.white, fontSize: 17.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.asset(
                "Images/docstart.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
