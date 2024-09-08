import 'package:drugstore/Widgets/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home_page_products extends StatefulWidget {
  const Home_page_products({super.key});

  @override
  State<Home_page_products> createState() => _Home_page_productsState();
}

class _Home_page_productsState extends State<Home_page_products> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 237, 252),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 25.sp),
                    )),
                  ),
                  Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                    size: 30.r,
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                'Hello, \nAmelia',
                style: TextStyle(fontSize: 25.sp, color: Colors.black),
              ),
              SizedBox(height: 15.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.r,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, size: 24.sp),
                  hintText: "What are you looking for?",
                  hintStyle: TextStyle(
                      fontSize: 16.sp, color: Colors.black.withOpacity(0.5)),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide.none,
                  ),
                )),
              ),
              SizedBox(height: 25.h),
              Text(
                "Top Categories",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.9)),
              ),
              SizedBox(height: 10.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 175.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15,
                  ),
                  itemCount: types_of_Diseases.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print("7amota 5wl");
                      },
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Colors.pinkAccent, Colors.red],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              types_of_Diseases[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                decoration: BoxDecoration(
                color: Colors.white,
                  image: DecorationImage(image: AssetImage('Images/Asset 8.jpg',),fit: BoxFit.cover)
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Deals of the Day",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.9)),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        // NAVIGATE TO MORE SCREEN
                      },
                      child: Text(
                        "More",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
             
              GridView.builder(
                
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 150 / 220,
                  ),
                  itemCount: doctor_details.length,
                  itemBuilder: (context, index) {
                    var i = doctor_details[index];
                   return  Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Container(
                                width: size.width,
                                height: 150,
                                decoration: BoxDecoration(
                                    color: Color(0XFFD4D4D8),
                                    borderRadius: BorderRadius.circular(10)
                               ,     image: DecorationImage(image: NetworkImage(i['img']),),
                                    ),
                              ),
                              Text(
                                i['name'].toString(),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              )
                            ],
                          ),
                        ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
