import 'dart:async';
import 'package:abisiniya/ui/backgroundWidget.dart';
import 'package:abisiniya/utility/colorConstants.dart';
import 'package:abisiniya/utility/stringConstatnts.dart';
import 'package:flutter/material.dart';
import '../NavigationScreen.dart';
import 'flightbooking.dart';

class ApartmentScreen extends StatefulWidget {
  @override
  ApartmentScreenState createState() => ApartmentScreenState();
}

class ApartmentScreenState extends State<ApartmentScreen> {
  // This controller will store the value of the search bar
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: ColorConstants.greyColor,
      leading: BackButton(
        color: ColorConstants.blackColor,
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(StringConstants.apartments,style: TextStyle(color: ColorConstants.blackColor),),
    ),
      body:  Stack(children: [
        BackgroundWidget(),
        SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                decoration: BoxDecoration(
                    color: ColorConstants.greyColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    gradient: LinearGradient(
                        colors: [
                          ColorConstants.greyColor,
                          ColorConstants.greenColor,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstants.greenColor.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: TextFormField(
                  focusNode: _searchFocusNode,
                  controller: _searchController,
                  cursorColor: ColorConstants.greenColor,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusColor: ColorConstants.greenColor,
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorConstants.greenColor,
                    ),
                    hintText: 'Search...',
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0,top: 5.0),
                  // height: 290.0,
                  child: new ListView(
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom:10.0,top:10.0),
                        // width: 180.0,
                        decoration: BoxDecoration(
                            color: ColorConstants.greyColor,
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
                            ]),
                        child: Column(
                          children: [
                                ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                                      child: Image.asset("assets/images/house.jpeg")),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Harare",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
                                    softWrap: true,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w900,
                                        color: ColorConstants.blackColor),
                                  ),
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Start from:",
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "\$60.00 /Night",
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right:8.0,bottom:2.0,top:10.0),
                              child: Row(
                                children: [
                                  Material(

                                    // elevation: 10.0,
                                    borderRadius: BorderRadius.circular(15.0),
                                    // shadowColor: ColorConstants.greenColor,

                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      alignment: AlignmentDirectional.centerStart,
                                      decoration: BoxDecoration(
                                        color:ColorConstants.greenColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: ColorConstants.greenColor.withOpacity(0.2),
                                        //     spreadRadius: 4,
                                        //     blurRadius: 10,
                                        //     offset: Offset(0, 3),
                                        //   )
                                        // ]
                                      ),
                                      child: Center(
                                        child:
                                        Text(
                                          "Book Now",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            color: ColorConstants.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),bottomRight: Radius.circular(8.0)),
                                  color: ColorConstants.greenColor
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0,bottom: 10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bedroom (s)",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bathroom (s)",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom:10.0,top:10.0),
                        // width: 180.0,
                        decoration: BoxDecoration(
                            color: ColorConstants.greyColor,
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
                            ]),
                        child: Column(
                          children: [
                                ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                                      child: Image.asset("assets/images/house.jpeg")),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Harare",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
                                    softWrap: true,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w900,
                                        color: ColorConstants.blackColor),
                                  ),
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Start from:",
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "\$60.00 /Night",
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right:8.0,bottom:2.0,top:10.0),
                              child: Row(
                                children: [
                                  Material(

                                    // elevation: 10.0,
                                    borderRadius: BorderRadius.circular(15.0),
                                    // shadowColor: ColorConstants.greenColor,

                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      alignment: AlignmentDirectional.centerStart,
                                      decoration: BoxDecoration(
                                        color:ColorConstants.greenColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: ColorConstants.greenColor.withOpacity(0.2),
                                        //     spreadRadius: 4,
                                        //     blurRadius: 10,
                                        //     offset: Offset(0, 3),
                                        //   )
                                        // ]
                                      ),
                                      child: Center(
                                        child:
                                        Text(
                                          "Book Now",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            color: ColorConstants.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),bottomRight: Radius.circular(8.0)),
                                  color: ColorConstants.greenColor
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0,bottom: 10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bedroom (s)",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bathroom (s)",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom:10.0,top:10.0),
                        // width: 180.0,
                        decoration: BoxDecoration(
                            color: ColorConstants.greyColor,
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
                            ]),
                        child: Column(
                          children: [
                                ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                                      child: Image.asset("assets/images/house.jpeg")),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Harare",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
                                    softWrap: true,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w900,
                                        color: ColorConstants.blackColor),
                                  ),
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Start from:",
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "\$60.00 /Night",
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right:8.0,bottom:2.0,top:10.0),
                              child: Row(
                                children: [
                                  Material(

                                    // elevation: 10.0,
                                    borderRadius: BorderRadius.circular(15.0),
                                    // shadowColor: ColorConstants.greenColor,

                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      alignment: AlignmentDirectional.centerStart,
                                      decoration: BoxDecoration(
                                        color:ColorConstants.greenColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: ColorConstants.greenColor.withOpacity(0.2),
                                        //     spreadRadius: 4,
                                        //     blurRadius: 10,
                                        //     offset: Offset(0, 3),
                                        //   )
                                        // ]
                                      ),
                                      child: Center(
                                        child:
                                        Text(
                                          "Book Now",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            color: ColorConstants.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),bottomRight: Radius.circular(8.0)),
                                  color: ColorConstants.greenColor
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0,bottom: 10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bedroom (s)",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bathroom (s)",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom:10.0,top:10.0),
                        // width: 180.0,
                        decoration: BoxDecoration(
                            color: ColorConstants.greyColor,
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
                            ]),
                        child: Column(
                          children: [
                                ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                                      child: Image.asset("assets/images/house.jpeg")),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Harare",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
                                    softWrap: true,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w900,
                                        color: ColorConstants.blackColor),
                                  ),
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Start from:",
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "\$60.00 /Night",
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right:8.0,bottom:2.0,top:10.0),
                              child: Row(
                                children: [
                                  Material(

                                    // elevation: 10.0,
                                    borderRadius: BorderRadius.circular(15.0),
                                    // shadowColor: ColorConstants.greenColor,

                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      alignment: AlignmentDirectional.centerStart,
                                      decoration: BoxDecoration(
                                        color:ColorConstants.greenColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: ColorConstants.greenColor.withOpacity(0.2),
                                        //     spreadRadius: 4,
                                        //     blurRadius: 10,
                                        //     offset: Offset(0, 3),
                                        //   )
                                        // ]
                                      ),
                                      child: Center(
                                        child:
                                        Text(
                                          "Book Now",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            color: ColorConstants.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),bottomRight: Radius.circular(8.0)),
                                  color: ColorConstants.greenColor
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0,bottom: 10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bedroom (s)",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bathroom (s)",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom:10.0,top:10.0),
                        // width: 180.0,
                        decoration: BoxDecoration(
                            color: ColorConstants.greyColor,
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
                            ]),
                        child: Column(
                          children: [
                                ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                                      child: Image.asset("assets/images/house.jpeg")),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Harare",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
                                    softWrap: true,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w900,
                                        color: ColorConstants.blackColor),
                                  ),
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Start from:",
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "\$60.00 /Night",
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right:8.0,bottom:2.0,top:10.0),
                              child: Row(
                                children: [
                                  Material(

                                    // elevation: 10.0,
                                    borderRadius: BorderRadius.circular(15.0),
                                    // shadowColor: ColorConstants.greenColor,

                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      alignment: AlignmentDirectional.centerStart,
                                      decoration: BoxDecoration(
                                        color:ColorConstants.greenColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: ColorConstants.greenColor.withOpacity(0.2),
                                        //     spreadRadius: 4,
                                        //     blurRadius: 10,
                                        //     offset: Offset(0, 3),
                                        //   )
                                        // ]
                                      ),
                                      child: Center(
                                        child:
                                        Text(
                                          "Book Now",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            color: ColorConstants.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),bottomRight: Radius.circular(8.0)),
                                  color: ColorConstants.greenColor
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0,bottom: 10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bedroom (s)",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bathroom (s)",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom:10.0,top:10.0),
                        // width: 180.0,
                        decoration: BoxDecoration(
                            color: ColorConstants.greyColor,
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
                            ]),
                        child: Column(
                          children: [
                                ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                                      child: Image.asset("assets/images/house.jpeg")),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Harare",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                          color: ColorConstants.greenColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
                                    softWrap: true,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w900,
                                        color: ColorConstants.blackColor),
                                  ),
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,top: 10.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Start from:",
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "\$60.00 /Night",
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      color: ColorConstants.blackColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right:8.0,bottom:2.0,top:10.0),
                              child: Row(
                                children: [
                                  Material(

                                    // elevation: 10.0,
                                    borderRadius: BorderRadius.circular(15.0),
                                    // shadowColor: ColorConstants.greenColor,

                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      alignment: AlignmentDirectional.centerStart,
                                      decoration: BoxDecoration(
                                        color:ColorConstants.greenColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: ColorConstants.greenColor.withOpacity(0.2),
                                        //     spreadRadius: 4,
                                        //     blurRadius: 10,
                                        //     offset: Offset(0, 3),
                                        //   )
                                        // ]
                                      ),
                                      child: Center(
                                        child:
                                        Text(
                                          "Book Now",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            color: ColorConstants.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),bottomRight: Radius.circular(8.0)),
                                  color: ColorConstants.greenColor
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0,bottom: 10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bedroom (s)",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "1-Bathroom (s)",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w900,
                                              color: ColorConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ]))
      ]),
    );
  }
}
