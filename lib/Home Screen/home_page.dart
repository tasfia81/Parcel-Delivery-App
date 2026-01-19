import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_apps/Core/AppRoute/app_route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<String> banners = [
    "assets/image/banner.png",
    "assets/image/banner.png",
    "assets/image/banner.png",
    "assets/image/banner.png",
  ];

  @override
  void initState() {
    super.initState();

    // Auto Scroll every 3 seconds
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        currentIndex++;
        if (currentIndex == banners.length) currentIndex = 0;
        _pageController.animateToPage(
          currentIndex,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                   CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://i.pravatar.cc/150', // demo profile
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Sazzad",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Color(0xFF000000))),
                        Row(
                          children: [
                            Image.asset('assets/image/location.png',width: 20,height: 20,),
                            Text("Riyadh, Saudi Arabia",
                                style: TextStyle(fontSize: 12, color: Color(0xFF757575),fontWeight: FontWeight.w400)
                            ),
                            Image.asset('assets/image/Frame.png',height: 16,width: 16,),
                          ],
                        ),

                      ],
                    ),
                      // Icon(Icons.notifications_none,color: Color(0xFF333333)),
                    ],
                  ),
                  Icon(Icons.notifications_none,color: Color(0xFF333333)),
                ],
              ),
              ///========== Track Parcel Container ============
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      height: 133,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFF139F25),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Track your Parcel',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xFFFFFFFF)),),
                            SizedBox(height: 8,),
                            Text('Please enter your order ind',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFFE5)),),
                            SizedBox(height: 8,),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFFFFFF),
                                hintText: "Order id",
                                suffixIcon: Icon(Icons.search, color: Colors.green),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    ///============== Slider Section ===================
                    SizedBox(
                      height: 160,
                      width: double.maxFinite,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: banners.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade200,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                banners[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.detailsPage);
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      border: BoxBorder.all(color: Color(0xFF139F25)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset('assets/image/box.png',height: 32,width: 32,),
                          SizedBox(width: 10,),
                          Text('Create New Shipment',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF333333)),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recent',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF333333)),),
                  SizedBox(height: 20,),
                  Container(
                    height: 86,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8),
                      border: BoxBorder.all(color: Color(0xFFD7D7D7)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50, width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFF6FBF6),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Image.asset('assets/image/frame_3.png',height: 24,width: 24,),
                          ),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Robert Downy',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xFF1E1E1E)),),
                              SizedBox(height: 4,),
                              Text('D.I Panjaitan Street, Purwokerto City',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF757575)),),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Image.asset('assets/image/frame_4.png',height: 16,width: 16,),
                                  SizedBox(width: 4,),
                                  Text('10 April 2025 , 10:30 am',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF757575)),),

                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 86,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8),
                      border: BoxBorder.all(color: Color(0xFFD7D7D7)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50, width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFF6FBF6),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Image.asset('assets/image/frame_3.png',height: 24,width: 24,),
                          ),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Robert Downy',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xFF1E1E1E)),),
                              SizedBox(height: 4,),
                              Text('D.I Panjaitan Street, Purwokerto City',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF757575)),),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Image.asset('assets/image/frame_4.png',height: 16,width: 16,),
                                  SizedBox(width: 4,),
                                  Text('10 April 2025 , 10:30 am',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF757575)),),

                                ],
                              )
                            ],
                          ),



                        ],
                      ),
                    ),
                  )
                ],
              ),


            ],
          ),
        ),

      ),
    );
  }
}
