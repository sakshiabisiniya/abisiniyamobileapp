import 'package:abisiniya/ui/backgroundWidget.dart';
import 'package:abisiniya/utility/stringConstatnts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../NavigationScreen.dart';
import '../utility/colorConstants.dart';
import 'login.dart';

class SignupScreen extends StatefulWidget {
  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController cPwdController = TextEditingController();
  final TextEditingController phnNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Stack(children: [
            BackgroundWidget(),
            SingleChildScrollView(
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
                          child: Text(StringConstants.createAccount,
                            style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),)),
                    ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 10.0, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child:
                      Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(15.0),
                        shadowColor: ColorConstants.greenColor,
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
                            controller: fNameController,
                            keyboardType: TextInputType.name,
                            autofocus: false,
                            style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: StringConstants.firstName,
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
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(15.0),
                          shadowColor: ColorConstants.greenColor,
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
                              controller: lNameController,
                              keyboardType: TextInputType.name,
                              autofocus: false,
                              style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: StringConstants.lastName,
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5.0, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child:
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(15.0),
                          shadowColor: ColorConstants.greenColor,
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
                            child: Padding(
                              padding: const EdgeInsets.only(left:5.0),
                              child: IntlPhoneField(
                                controller: phnNumberController,
                                style: TextStyle(
                                  fontSize: 15.0
                                ),
                                dropdownIconPosition: IconPosition.trailing,
                                dropdownDecoration: BoxDecoration(
                                  color:Colors.transparent,
                                ),
                                initialCountryCode: StringConstants.initialCountryCode,
                                autofocus: false,
                                disableLengthCheck: true,
                                cursorColor: ColorConstants.greenColor,
                                pickerDialogStyle: PickerDialogStyle(
                                  backgroundColor: ColorConstants.greyColor,
                                  searchFieldCursorColor: ColorConstants.greenColor,
                                  searchFieldInputDecoration: InputDecoration(
                                    hintText: StringConstants.searchHere,
                                    focusColor: ColorConstants.greenColor,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: ColorConstants.greenColor
                                        )
                                    )
                                  ),
                                ),
                                autovalidateMode: AutovalidateMode.disabled,//default contry code, NP for Nepal
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Phone Number',
                                      filled: false,
                                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 10.0)
                                  ),
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5.0, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child:
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(15.0),
                          shadowColor: ColorConstants.greenColor,
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
                                  hintText: StringConstants.eMail,
                                  filled: false,
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5.0, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child:
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(15.0),
                          shadowColor: ColorConstants.greenColor,
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
                                controller: pwdController,
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
                          left: 15.0, right: 15.0, top: 5.0, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child:
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(15.0),
                          shadowColor: ColorConstants.greenColor,
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
                                controller: cPwdController,
                                obscureText: true,
                                autofocus: false,
                                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: StringConstants.cPwd,
                                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                                ),
                              ),
                            ),
                        ),
                      )
                  ),
                  // FlatButton(
                  //   onPressed: () {
                  //     //TODO FORGOT PASSWORD SCREEN GOES HERE
                  //   },
                  //   child: Text(
                  //     'Forgot Password',
                  //     style: TextStyle(color: Colors.blue, fontSize: 15),
                  //   ),
                  // ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5.0, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child:
                      Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(15.0),
                        shadowColor: ColorConstants.greenColor,
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
                            child: GestureDetector(
                              onTap: () {},
                              child:
                              Text(
                                StringConstants.signUp,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  color: Colors.black,
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
                      FocusManager.instance.primaryFocus?.unfocus();
                      fNameController.clear();
                      lNameController.clear();
                      phnNumberController.clear();
                      emailController.clear();
                      pwdController.clear();
                      cPwdController.clear();
                      Navigator.pushReplacement(context,
                          NavigationScreen(page: LoginScreen()));                },
                    child: RichText(
                      text: TextSpan(
                        text: StringConstants.alreadyAccount,
                        style: TextStyle(color:ColorConstants.blackColor, fontSize: 15.0, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(StringConstants.forgotPwd,
                    style: TextStyle(color: ColorConstants.redColor, fontSize: 15.0, fontWeight: FontWeight.w400),),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}