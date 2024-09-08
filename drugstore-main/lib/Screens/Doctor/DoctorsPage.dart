
import 'package:drugstore/Screens/Doctor/Doctor_details_page.dart';
import 'package:drugstore/Widgets/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
           
          
            Container(
              width: double.infinity,
              height: 170,
              padding: EdgeInsets.all(10),
              color: Color.fromARGB(255, 76, 76, 220),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                                child: Text(
                              "A",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello, Welcome!",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 212, 212, 216)),
                              ),
                              Text("Amelia Khaled",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 23))
                            ],
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.white,
                            size: 30,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 320.w,
                    child: TextField(
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
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              color: Color.fromARGB(255, 237, 237, 252),
              child: Column(
                children: [
                  Container(
                    
                    height: 40.h,
                    child: ListView.separated(
                            shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: types_of_Diseases.length,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          width: 85.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                           
                            ]
                          ),
                          child: Center(
                            child: Text(
                              types_of_Diseases[index].toString(),
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Doctor",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: TextStyle(fontSize: 20.sp),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ...List.generate(
                    doctor_details.length, (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Doc_details(index: index,)));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10.h),
                        width: MediaQuery.of(context).size.width.w,
                        padding: EdgeInsets.all(10),
                        height: 170.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(3, 3)
                          )]),
                          child: Row(
                                  children: [
                              Container(
                                width: 100.w,
                                height: MediaQuery.of(context).size.height.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: NetworkImage(doctor_details[index]["img"].toString() ),fit: BoxFit.cover)
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(doctor_details[index]["name"].toString(), style: TextStyle(fontSize: 20),),
                                  Text(doctor_details[index]["category"].toString(),style: TextStyle(fontSize: 20 ,color: Colors.grey)),
                                  Row(
                                    children: [
                                      Text(doctor_details[index]["rate"].toString(),style: TextStyle(fontSize: 20)),
                                      Icon(Icons.star, color: Colors.yellow, size: 20)
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 50.w,),
                              Icon(Icons.menu)
                            ],
                          ),
                      )
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
