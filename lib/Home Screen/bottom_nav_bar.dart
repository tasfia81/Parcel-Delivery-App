import 'package:flutter/material.dart';
import 'package:login_apps/Home%20Screen/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<String> buttonTitle=['HomePage'];
  int _currentIndex=0;
  final List<Widget> _page = <Widget> [
    const HomePage(),
    const Center(
      child: Text(""),),
    const Center(
      child: Text(""),),
    const Center(
      child: Text(""),),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: null ,
        unselectedItemColor: null,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed, // Item gula dekhanur jonno
        items: [

          BottomNavigationBarItem(
            label: '',
            icon: Container(
              height: 44,
              width: 105,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Color(0xFF139F25),
               // color: _currentIndex == 0 ? Colors.green : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/home.png',
                    height: 19, width: 18,
                    // Icons.home_outlined,
                    // size: 24,
                    // color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // BottomNavigationBarItem(icon: ImageIcon(
          //   AssetImage( 'assets/icons/frame_1.png',),
          //   size: 24,
          // ),label: "",
          // ),
          // BottomNavigationBarItem(icon: ImageIcon(
          //   AssetImage( 'assets/icons/frame_1.png',),
          //   size: 24,
          // ),label: "",
          // ),
          // BottomNavigationBarItem(icon: ImageIcon(
          //   AssetImage( 'assets/icons/frame_2.png',),
          //   size: 24,
          // ),label: "",
          // ),

          BottomNavigationBarItem(
            label: "",
            icon: Image.asset("assets/icons/frame_1.png", height: 24,width: 24,),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset("assets/icons/frame_1.png", height: 24,width: 24,),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset("assets/icons/frame_2.png", height: 24,width: 24,),
          ),
        ],

      ),
    );
  }
}
