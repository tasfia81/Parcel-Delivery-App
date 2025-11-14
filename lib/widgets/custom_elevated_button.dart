import 'package:flutter/material.dart';
class Custom_elevated_Button extends StatelessWidget {
  final String buttonName;
  final Color? buttonColor;
  final Color? textColor;
  final bool isBordered; // eta true hole border dekhabe
  Custom_elevated_Button({
    super.key,
    required this.buttonName,
     this.buttonColor,
     this.textColor,
    this.isBordered=false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            //color: Color(0xFF139F25),
            color: isBordered? Colors.white : (buttonColor ?? Color(0xff139F25)),
            borderRadius: BorderRadius.circular(20),
            border: isBordered ? Border.all(color: Color(0xff139F25),width: 2) : null,

          ),
          child: Center(
            child: Text(buttonName,style: TextStyle(fontSize: 18,color: isBordered ? Color(0xff333333) : Colors.white,),),
          ),
        ),
      ),
    );
  }
}
