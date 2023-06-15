import 'dart:async';
import 'package:abisiniya/ui/apartmentscreen.dart';
import 'package:abisiniya/ui/backgroundWidget.dart';
import 'package:abisiniya/ui/carhire.dart';
import 'package:abisiniya/utility/colorConstants.dart';
import 'package:abisiniya/utility/stringConstatnts.dart';
import 'package:flutter/material.dart';
import '../NavigationScreen.dart';
import 'flightbooking.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // This controller will store the value of the search bar
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundWidget(),
        SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 20.0),
            child: Column(children: [
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Text(
                  StringConstants.projectName,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      color: ColorConstants.blackColor),
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Stack(
              children: [
                Container(
                  height: 45,
                  margin: EdgeInsets.only(top: 28.0),
                  decoration: BoxDecoration(
                      color: ColorConstants.greyColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: ColorConstants.greenColor.withOpacity(0.5),
                            offset: Offset(0, 20),
                            blurRadius: 5,
                            spreadRadius: -10)
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            StringConstants.flights,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.greenColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            StringConstants.car,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.greenColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            StringConstants.property,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.greenColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            StringConstants.account,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.greenColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: FloatingActionButton.small(
                        onPressed: () {
                          Navigator.push(context,
                              NavigationScreen(page: FlightBooking()));},
                        elevation: 0,
                        child: const Icon(Icons.flight_takeoff_sharp),
                        backgroundColor: ColorConstants.greyColor,
                        foregroundColor: ColorConstants.greenColor,
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton.small(
                        onPressed: () {Navigator.push(context,
                            NavigationScreen(page: CarHireScreen()));},
                        elevation: 0,
                        child: const Icon(Icons.directions_car),
                        backgroundColor: ColorConstants.greyColor,
                        foregroundColor: ColorConstants.greenColor,
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton.small(
                        onPressed: () {Navigator.push(context,
                            NavigationScreen(page: ApartmentScreen()));},
                        elevation: 0,
                        child: const Icon(Icons.house_siding),
                        backgroundColor: ColorConstants.greyColor,
                        foregroundColor: ColorConstants.greenColor,
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton.small(
                        onPressed: () {},
                        elevation: 0,
                        child: const Icon(Icons.person),
                        foregroundColor: ColorConstants.greenColor,
                        backgroundColor: ColorConstants.greyColor,
                      ),
                    ),
                  ],
                ),
                // Column(
                // children: [
                // Add the floating search bar

                // Expanded(
                //   child: ListView.builder(
                //     itemCount: 20,
                //     itemBuilder: (context, index) {
                //       return ListTile(
                //         title: Text('Item $index'),
                //       );
                //     },
                //   ),
                // ),
                // ],
                // ),
              ],
            ),
          ),
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
                  margin: EdgeInsets.only(left: 20.0,top: 10.0),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                      "Our Top Picks of Luxury Lodges".toUpperCase(),
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15.0,
                          color: ColorConstants.whiteColor),
                    ),
                  ),
              Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0,top: 5.0),
              height: 290.0,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(right:10.0),
                    width: 180.0,
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
                            child: Image.asset("assets/images/house.jpeg", width: 180)),
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
                            child: Text(
                              "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
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
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0),
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
                                          color: ColorConstants.greenColor),
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
                                          color: ColorConstants.greenColor),
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
                   margin: EdgeInsets.only(right:10.0),
                    width: 180.0,
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
                            child: Image.asset("assets/images/house.jpeg", width: 180)),
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
                            child: Text(
                              "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
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
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0),
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
                                          color: ColorConstants.greenColor),
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
                                          color: ColorConstants.greenColor),
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
                   margin: EdgeInsets.only(right:10.0),
                    width: 180.0,
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
                            child: Image.asset("assets/images/house.jpeg", width: 180)),
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
                            child: Text(
                              "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
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
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0),
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
                                          color: ColorConstants.greenColor),
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
                                          color: ColorConstants.greenColor),
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
                   margin: EdgeInsets.only(right:10.0),
                    width: 180.0,
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
                            child: Image.asset("assets/images/house.jpeg", width: 180)),
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
                            child: Text(
                              "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
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
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0),
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
                                          color: ColorConstants.greenColor),
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
                                          color: ColorConstants.greenColor),
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
                   margin: EdgeInsets.only(right:10.0),
                    width: 180.0,
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
                            child: Image.asset("assets/images/house.jpeg", width: 180)),
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
                            child: Text(
                              "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
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
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0),
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
                                          color: ColorConstants.greenColor),
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
                                          color: ColorConstants.greenColor),
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
                   margin: EdgeInsets.only(right:10.0),
                    width: 180.0,
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
                            child: Image.asset("assets/images/house.jpeg", width: 180)),
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
                            child: Text(
                              "Cr Tongogara and Takawire gfhfhfhfghfghfhfg",
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
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right:8.0,top:10.0),
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
                                          color: ColorConstants.greenColor),
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
                                          color: ColorConstants.greenColor),
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
              Container(
                margin: EdgeInsets.only(left: 20.0,top: 10.0),
                alignment: AlignmentDirectional.centerStart,
                child: Row(
                  children: [
                    Icon(Icons.local_offer, color: ColorConstants.greyColor, size: 16,),
                    Text(
                      " Offers".toUpperCase(),
                      style: TextStyle(

                          decoration: TextDecoration.none,
                          fontSize: 15.0,
                          color: ColorConstants.whiteColor),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0,top: 5.0),
                  height: 120.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height:120.0,
                        margin: EdgeInsets.only(right:10.0),
                        width: 180.0,
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
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset("assets/images/airplane.jpeg", width: 250, height: 120.0,)),
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 10.0),
                              alignment: AlignmentDirectional.bottomCenter,

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Huge savings on Domestic trips!",
                                  overflow: TextOverflow.ellipsis,

                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.blackColor,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black.withOpacity(0.3),
                                            offset: const Offset(15, 15),
                                            blurRadius: 15),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height:120.0,
                        margin: EdgeInsets.only(right:10.0),
                        width: 180.0,
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
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset("assets/images/airplane.jpeg", width: 250, height: 120.0,)),
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 10.0),
                              alignment: AlignmentDirectional.bottomCenter,

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Huge savings on Domestic trips!",
                                  overflow: TextOverflow.ellipsis,

                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.blackColor,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black.withOpacity(0.3),
                                            offset: const Offset(15, 15),
                                            blurRadius: 15),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height:120.0,
                        margin: EdgeInsets.only(right:10.0),
                        width: 180.0,
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
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset("assets/images/airplane.jpeg", width: 250, height: 120.0,)),
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 10.0),
                              alignment: AlignmentDirectional.bottomCenter,

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Huge savings on Domestic trips!",
                                  overflow: TextOverflow.ellipsis,

                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.blackColor,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black.withOpacity(0.3),
                                            offset: const Offset(15, 15),
                                            blurRadius: 15),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height:120.0,
                        margin: EdgeInsets.only(right:10.0),
                        width: 180.0,
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
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset("assets/images/airplane.jpeg", width: 250, height: 120.0,)),
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 10.0),
                              alignment: AlignmentDirectional.bottomCenter,

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Huge savings on Domestic trips!",
                                  overflow: TextOverflow.ellipsis,

                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.blackColor,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black.withOpacity(0.3),
                                            offset: const Offset(15, 15),
                                            blurRadius: 15),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height:120.0,
                        margin: EdgeInsets.only(right:10.0),
                        width: 180.0,
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
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset("assets/images/airplane.jpeg", width: 250, height: 120.0,)),
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 10.0),
                              alignment: AlignmentDirectional.bottomCenter,

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Huge savings on Domestic trips!",
                                  overflow: TextOverflow.ellipsis,

                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.blackColor,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black.withOpacity(0.3),
                                            offset: const Offset(15, 15),
                                            blurRadius: 15),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height:120.0,
                        margin: EdgeInsets.only(right:10.0),
                        width: 180.0,
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
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset("assets/images/airplane.jpeg", width: 250, height: 120.0,)),
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 10.0),
                              alignment: AlignmentDirectional.bottomCenter,

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Huge savings on Domestic trips!",
                                  overflow: TextOverflow.ellipsis,

                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.blackColor,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black.withOpacity(0.3),
                                            offset: const Offset(15, 15),
                                            blurRadius: 15),
                                      ]),
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
