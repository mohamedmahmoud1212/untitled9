import 'package:drugstore/Screens/Products/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});
  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              width: double.infinity,
              color: Color.fromARGB(255, 76, 76, 220),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 65.h),
                  Text(
                    'Hello, \nAmelia',
                    style: TextStyle(fontSize: 25.sp, color: Colors.white),
                  ),
                  SizedBox(height: 10.h),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 24.sp,
                        color: Color(0XFFEDEDFC).withOpacity(0.4),
                      ),
                      hintText: "Looking for a certain Doc?",
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0XFFEDEDFC).withOpacity(0.4),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 76, 76, 220),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0XFFEDEDFC).withOpacity(0.4),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0XFFEDEDFC),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 3.h),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: Text(
                      "Get special offer",
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 330.w,
                    height: 110.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.r,
                          offset: Offset(3, 3.h),
                        ),
                      ],
                      image: DecorationImage(image: AssetImage("Images/Asset 7.jpg"), fit:  BoxFit.cover),

                    ),
                  
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10.h),
                  Stack(
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(color: Colors.black, fontSize: 20.sp),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 100.w,
                          height: 2.h,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home_page_products()));
                        },
                        child: Container(
                          width: 130.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.indigoAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.r,
                                offset: Offset(0, 2.h),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 87.h,
                                width: double.infinity,
                                child: Image.asset(
                                  "Images/pills.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                "Medical",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(

                        onTap: () {
                          Navigator.pushNamed(context, '/docstart');
                        },
                        child: Container(
                          width: 130.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.teal,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.r,
                                offset: Offset(0, 2.h),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 87.h,
                                width: double.infinity,
                                child: Image.asset(
                                  "Images/doc.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                "Doctors",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 130.w,
                      height: 130.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0xffF56789),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5.r,
                            offset: Offset(0, 2.h),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 87.h,
                            width: double.infinity,
                            child: Image.asset(
                              "Images/beauty.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Beauty",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
