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
      child: Text("Chat is selected",style: TextStyle(fontSize: 25, color: Colors.indigo),),
    ),
    const Center(
      child: Text("Notification is selected",style: TextStyle(fontSize: 25, color: Colors.indigo),),
    ),
    const Center(
      child: Text("menu",style: TextStyle(fontSize: 25, color: Colors.indigo),),
    ),
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
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed, // Item gula dekhanur jonno
        items: const[

          BottomNavigationBarItem(icon: Icon(Icons.wechat_rounded),label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.web_stories),label: 'Stories'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
        ],

      ),
    );
  }
}
