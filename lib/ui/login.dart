import 'package:abisiniya/NavigationScreen.dart';
import 'package:abisiniya/ui/backgroundWidget.dart';
import 'package:abisiniya/ui/homescreen.dart';
import 'package:abisiniya/ui/signup.dart';
import 'package:abisiniya/utility/colorConstants.dart';
import 'package:abisiniya/utility/stringConstatnts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginscreenState createState() => LoginscreenState();
}

class LoginscreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(children: [
        BackgroundWidget(),
        SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(
                        width: 300,
                        height: 150,
                        child: Image.asset('assets/images/logo1.png')),
                  ),
                ),
                Center(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 30.0),
                        child: Text(StringConstants.login,
                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)),
                  ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child:
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(15.0),
                      shadowColor: Color(0xFF54A415),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: ColorConstants.greenColor.withOpacity(0.2),
                                spreadRadius: 4,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ]
                        ),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: StringConstants.userName,
                              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                          ),
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 10.0, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child:
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(15.0),
                      shadowColor: Color(0xFF54A415),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: ColorConstants.greenColor.withOpacity(0.2),
                                spreadRadius: 4,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ]
                        ),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          autofocus: false,
                          style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                              hintText: StringConstants.password,
                              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                          ),
                        ),
                      ),
                    ),
                  )
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 10.0, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child:
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(15.0),
                      shadowColor: ColorConstants.greenColor,
                      child: GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          emailController.clear();
                          passwordController.clear();
                          Navigator.push(context,
                                    NavigationScreen(page: HomeScreen()));
                        },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color:ColorConstants.greenColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: ColorConstants.greenColor.withOpacity(0.2),
                                spreadRadius: 4,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ]
                        ),
                        child: Center(
                            child:
                            Text(
                              StringConstants.loginButton,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                color: ColorConstants.blackColor,
                              ),
                            ),
                          ),
                        ),
                      ),

                    )
                ),
                SizedBox(
                  height: 40,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        NavigationScreen(page: SignupScreen()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: StringConstants.newUser,
                      style: TextStyle(color:ColorConstants.blackColor, fontSize: 15.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(StringConstants.forgotPwd,
                style: TextStyle(color: ColorConstants.redColor, fontSize: 15.0, fontWeight: FontWeight.w400),),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}