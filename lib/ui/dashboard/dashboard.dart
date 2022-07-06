import 'package:attendance_with_bio/providers/user_data.dart';
import 'package:attendance_with_bio/ui/utils/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'components/titleContainer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  static String routeName = "/dashboard";

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String? userName;
  @override
  void initState(){
    super.initState();
    userName = UserData.getUserName();
  }

  @override
  Widget build(BuildContext context) {
    String greetings(){
      var hour = DateTime.now().hour;
      if(hour < 12){
      // 
        return "Good Morning, ";
      }
      if(hour < 17){
      // 
        return "Good Evening, ";
      }
      // 
      return "Good Evening, ";
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child:  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                color: Colors.blue[100],
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(greetings(),
                                    style: GoogleFonts.muli(
                                        fontSize: 16.sp, fontWeight: FontWeight.w600)),
                                         Text('$userName',
                                        style: GoogleFonts.muli(
                                            fontSize: 16.sp, fontWeight: FontWeight.w700)),
                              ],
                            ),
                          const  SizedBox(height: 10),
                            Text('Have a nice day',
                            style: GoogleFonts.muli(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                          ],
                        ),
                       
                                
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                        ),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: const DecorationImage(
                                  image: AssetImage(
                                'assets/user_image.png',
                              ))),
                        ))
                  ],
                ),
              ),
              
              const SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 0.0,
                  children: [
                        Card(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.photo_camera),
                              CustomText(text: "Leave",size: 13.sp,color: Colors.grey,)
                            ],
                          )
                        ),
                        Card(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.photo_camera),
                              CustomText(text: "Attendance",size: 13.sp,color: Colors.grey,)
                            ],
                          )
                        ),
                        Card(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.photo_camera),
                              CustomText(text: "Salary",size: 13.sp,color: Colors.grey,)
                            ],
                          )
                        ),
                        Card(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.photo_camera),
                              CustomText(text: "Benefits",size: 13.sp,color: Colors.grey,)
                            ],
                          )
                        ),
                         Card(
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.photo_camera),
                                CustomText(text: "Request Leave",size: 13.sp,color: Colors.grey,)
                              ],
                            ),
                          )
                        ),
                         Card(
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.photo_camera),
                                CustomText(text: "Leave",size: 13.sp,color: Colors.grey,)
                              ],
                            ),
                          )
                        ),
                    
                  ],
                ),
              )
              // const SizedBox(height: 40),
              // //on going course
              // TitleContainer(
              //   titleName: "Top Courses",
              //   onPressed: () {},
              // ),
              // Container(
              //     height: 360,
              //     child: ListView(
              //         scrollDirection: Axis.horizontal,
              //         clipBehavior: Clip.none,
              //         children: [
              //           onGoingCourse(
              //               'assets/Profile.png',
              //               'assets/user_image.png',
              //               'Precious',
              //               'WordPress for beginners master Course',
              //               'April 15',
              //               3),
              //           onGoingCourse(
              //               'assets/Profile.png',
              //               'assets/user_image.png',
              //               'Precious',
              //               'Introduction to programming for dummies',
              //               'April 15',
              //               5),
              //         ])),

              // TitleContainer(
              //   titleName: "Categories",
              //   onPressed: () {},
              // ),
              // const SizedBox(height: 20),
              // ListView.separated(
              //     separatorBuilder: (context, index) =>
              //         const SizedBox(height: 13),
              //     shrinkWrap: true,
              //     physics: const ClampingScrollPhysics(),
              //     itemCount: 4,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         padding: const EdgeInsets.all(15),
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(25),
              //             color: Colors.white),
              //         height: 100,
              //         width: double.infinity,
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //             Image.asset('assets/post2.jpg',
              //                 width: 60, height: 90),
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Text('Web Design',
              //                     style: GoogleFonts.muli(
              //                         fontSize: 11.sp,
              //                         fontWeight: FontWeight.w400,
              //                         color: Colors.grey)),
              //                 Text('5 Categories',
              //                     style: GoogleFonts.muli(
              //                         fontSize: 11.sp,
              //                         fontWeight: FontWeight.w400,
              //                         color: Colors.grey))
              //               ],
              //             ),
              //             TextButton(
              //                 style: TextButton.styleFrom(
              //                   shape: RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(8.0)),
              //                   primary: const Color(0xFF0000FF),
              //                   backgroundColor: const Color(0x1A0000FF),
              //                 ),
              //                 onPressed: () {},
              //                 child: Icon(Icons.arrow_forward))
              //           ],
              //         ),
              //       );
              //     })
            ]),
          ),
        ),
    );
  }

  onGoingCourse(String? backgroundImage, String? userIcon, String? userName,
      String? courseName, String? date, double rating) {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 15.0),
        child: Container(
          height: 300,
          width: 225.0,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 345,
                  ),
                  Positioned(
                    top: 35,
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        height: 260,
                        width: 225,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 160.0,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                  // topRight: Radius.circular(20.0),
                                ),
                                color: Colors.blue,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Feature Image.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('$courseName',
                                  style: GoogleFonts.muli(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700)),
                            )),
                            
                          ],
                        )),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
