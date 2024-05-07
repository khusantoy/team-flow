import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_flow/utils/sizes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLarge = false;
    if (SizeUtils.screenWidth(context) > 1024) {
      isLarge = true;
    }
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          theme: ThemeData(fontFamily: "Inter"),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: isLarge
                ? AppBar(
                    leadingWidth: 250,
                    leading: const Row(
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          "team.flow",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Josefinsans",
                          ),
                        ),
                      ],
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 600,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Text(
                                      "How it Works",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF35414B),
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Color(0xFF35414B),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Text(
                                      "Product",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF35414B),
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Color(0xFF35414B),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Text(
                                      "Pricing",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF35414B),
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Color(0xFF35414B),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Text(
                                      "Resources",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF35414B),
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Color(0xFF35414B),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF35414B),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 168,
                        height: 48.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFECE5FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              )),
                          child: const Text(
                            "Get started free",
                            style: TextStyle(
                              color: Color(0xFF794CFF),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                    ],
                  )
                : AppBar(
                    title: Text(
                      "team.flow",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: "Josefinsans",
                      ),
                    ),
                  ),
            endDrawer: !isLarge ? const Drawer() : null,
            // body: SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       Container(
            //         padding: EdgeInsets.symmetric(
            //           horizontal: 30.w,
            //           vertical: 20.h,
            //         ),
            //         child: Column(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.symmetric(
            //                 horizontal: 16.w,
            //                 vertical: 4.h,
            //               ),
            //               child: Container(
            //                 width: 159.w,
            //                 height: 21.h,
            //                 decoration: BoxDecoration(
            //                   color: const Color(0xFFF2F9EB),
            //                   borderRadius: BorderRadius.circular(100.r),
            //                 ),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Text(
            //                       "Get account of \$59",
            //                       style: TextStyle(
            //                         fontSize: 13.sp,
            //                         color: const Color(0xFF35414B),
            //                       ),
            //                       textAlign: TextAlign.center,
            //                     ),
            //                     Icon(
            //                       Icons.arrow_forward_ios_rounded,
            //                       color: const Color.fromRGBO(53, 65, 75, 1),
            //                       size: 10.sp,
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             Text(
            //               "Manage the team everyone wants to be on",
            //               style: TextStyle(
            //                 color: const Color(0xFF35414B),
            //                 fontSize: 32.sp,
            //                 fontWeight: FontWeight.w600,
            //               ),
            //               textAlign: TextAlign.center,
            //             ),
            //             SizedBox(
            //               height: 16.h,
            //             ),
            //             Text(
            //               "Simple platform that lets you master what great managers do best, as develop trust, collaborate, and drive team performance.",
            //               style: TextStyle(
            //                 color: const Color(0xFF4E5A65),
            //                 fontSize: 16.sp,
            //               ),
            //               textAlign: TextAlign.center,
            //             ),
            //             SizedBox(
            //               height: 10.h,
            //             ),
            //             Column(
            //               children: [
            //                 Container(
            //                   width: 318.w,
            //                   height: 52.h,
            //                   decoration: BoxDecoration(
            //                     border: Border.all(
            //                       width: 1.w,
            //                       color: const Color(0xFFE1E5EA),
            //                     ),
            //                     borderRadius: BorderRadius.circular(4.r),
            //                   ),
            //                   child: Center(
            //                     child: Text(
            //                       "name@yourcompany.com",
            //                       style: TextStyle(
            //                         color: const Color(0xFF97A5B5),
            //                         fontSize: 16.sp,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   height: 8.h,
            //                 ),
            //                 SizedBox(
            //                   width: 318.w,
            //                   height: 52.h,
            //                   child: ElevatedButton(
            //                     style: ElevatedButton.styleFrom(
            //                       backgroundColor: const Color(0xFF794CFF),
            //                       shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(1.r),
            //                       ),
            //                     ),
            //                     onPressed: () {},
            //                     child: Text(
            //                       "Try it free",
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 16.sp,
            //                         fontWeight: FontWeight.w500,
            //                       ),
            //                     ),
            //                   ),
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ),
        );
      },
    );
  }
}
