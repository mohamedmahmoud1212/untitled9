import 'package:drugstore/Widgets/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Doc_details extends StatelessWidget {
  final int? index;
  Doc_details({
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_outlined, color: Colors.white, size: 25.sp),
                Text(
                  "Voice call And message",
                  style: TextStyle(color: Colors.white , fontSize: 20.sp),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 237, 237, 252),
      appBar: AppBar(
        title: Text("My Appointment"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 420.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width.w,
                      height: 300.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  doctor_details[index!]["img"].toString()),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                doctor_details[index!]["name"].toString(),
                                style: TextStyle(fontSize: 25.sp),
                              ),
                              Text(
                                doctor_details[index!]["category"].toString(),
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 25.sp),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                doctor_details[index!]["rate"].toString(),
                                style: TextStyle(fontSize: 20.sp),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20.sp,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text(
                          "n +",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Patients",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.arrow_outward_outlined,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text("n +", style: TextStyle(fontSize: 20)),
                        Text(
                          "Years Exp ",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text(doctor_details[index!]["rate"].toString(),
                            style: TextStyle(fontSize: 20)),
                        Text(
                          "Rating",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.message_outlined,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text("n +", style: TextStyle(fontSize: 20)),
                        Text(
                          "Reviews",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "About me ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                  )),
              SizedBox(
                height: 15.h,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Iam a doctor , a cute doctor ",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
