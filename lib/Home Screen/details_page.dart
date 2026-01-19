import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // actions: [
        //   Icon(Icons.arrow_back_ios_sharp,),
        // ],
        centerTitle: true,
        title: Text('Choose Location',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF333333)),),
      ),
      body: Column(
        children: [
          Container(
            
          )
        ],
      ),
    );
  }
}
