import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_apps/Core/AppRoute/app_route.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<SignUp> {
  String selectecRole='User'; // difult vabe user selected thakbe
  bool isChecked = false;
  bool _isobScure = true;
  bool _isobscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Create Your Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff139F25),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Join us to explore top Canadian-made\nproducts, exclusive deals, and great rewards',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Color(0xff757575),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text('Select your role',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xff757575)),),

            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///======================== USER BUTTON =======================
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selectecRole='User';
                    });
                  },
                  child: Center(
                    child: Container(
                      height: 48,
                      width: 141,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectecRole=='User'? Color(0xff139F25) : Colors.white,
                        border: Border.all(color: Color(0xFF139F25)),
                      ),
                      child: Center(child: Text('User',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,
                          color: selectecRole == 'User'? Color(0xffFFFFFF): Colors.black),)),

                    ),
                  ),
                ),

                SizedBox(width: 20,),
                ///==================== RIDER BUTTON =======================
                GestureDetector(
                  onTap: (){
                    setState(() {
                      selectecRole='Rider';
                    });
                  },
                  child: Center(
                    child: Container(
                      height: 48,
                      width: 141,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectecRole=='Rider'? Color(0xff139F25) : Colors.white,
                        border: BoxBorder.all(color: Color(0xff139F25)),

                      ),
                      child: Center(child: Text('Rider',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,
                          color:selectecRole == 'Rider'? Color(0xffFFFFFF) : Colors.black),)),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text('Email',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your full name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.grey.shade100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.grey),
                      )
                    ),

                  ),
                  SizedBox(height: 15,),

                  Text('Full Name',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter your email address",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey.shade100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),

                  ),
                  SizedBox(height: 15,),

                  Text('Phone',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/image/flag.png',height: 24,width: 24,),
                      ),
                        hintText: "Enter your phone number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey.shade100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),

                  ),
                  SizedBox(height: 15,),

                  Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: _isobScure,
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            _isobScure =! _isobScure;
                          });

                        }, icon: Icon(
                          _isobScure ? Icons.visibility_off_outlined: Icons.visibility,

                        )),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey.shade100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),

                  ),
                  SizedBox(height: 15,),

                  Text('Confirm Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: _isobscure,
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            _isobscure =! _isobscure;
                          });

                        }, icon: Icon(
                          _isobscure ? Icons.visibility_off_outlined: Icons.visibility,

                        )),
                        //contentPadding: EdgeInsets.symmetric(vertical: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey.shade100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),

                  ),
                  SizedBox(height: 15,),

                  Row(
                    children: [
                       Checkbox(value: isChecked, onChanged: (bool? value){
                         setState(() {
                           isChecked=value!;
                         });

                      }),
                      RichText(text: TextSpan(
                        text: "I agree to the ",style: TextStyle(fontSize:15,fontWeight: FontWeight.w400,color: Color(0xff757575), ),
                          children: <TextSpan>[
                          TextSpan(
                            text: "Terms and Conditions ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Color(0xff333333)),
                          ),
                            TextSpan(
                              text: "and ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Color(0xff757575)),
                            ),
                            TextSpan(
                              text: "Privacy Policy",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Color(0xff333333)),
                            ),


                        ]
                      ))
                    ],
                  ),
                  SizedBox(height: 15,),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          height: 48,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff139F25),
                          ),
                          child: Center(child: Text('Continue',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),)),
                        ),
                      ),
                      SizedBox(height: 16,),
                      Text("or",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff3A3A3A)),),
                      SizedBox(height: 16,),
                      Center(
                        child: Container(
                          height: 48,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffFFFFF),
                            border: BoxBorder.all(color: Color(0xffD7D7D7)),

                          ),
                          // child: Image.asset('assets/image/google.png',height: 24,width: 24,),
                          child: Center(
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Image.asset('assets/image/google.png',height: 24,width: 24,),
                                SizedBox(width: 7,),
                                Text('Continue with Google',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff3A3A3A)),),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15,),

                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.signIn);
                        },
                        child: RichText(text: TextSpan(
                          text: "Allready have an account? ",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff757575)),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Sign in",
                              style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xff139F25)),
                            )
                          ]

                        )),
                      )
                    ],
                  ),
                  SizedBox(height: 16,),

                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}
