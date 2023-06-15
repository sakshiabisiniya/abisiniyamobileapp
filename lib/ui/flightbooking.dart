import 'package:abisiniya/utility/stringConstatnts.dart';
import 'package:flutter/material.dart';

import '../utility/colorConstants.dart';

class FlightBooking extends StatefulWidget {
  const FlightBooking({Key? key}) : super(key: key);

  @override
  State<FlightBooking> createState() => _FlightBookingState();
}

class _FlightBookingState extends State<FlightBooking> {
  @override
  Widget build(BuildContext context) {
    var maxLines = 5;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.greyColor,
        leading: BackButton(
          color: ColorConstants.blackColor,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(StringConstants.searchFlight,style: TextStyle(color: ColorConstants.blackColor),),
      ),
      body: SingleChildScrollView(

child:                   Container(
  color: ColorConstants.greyColor,
  child:   Padding(
      padding: const EdgeInsets.only(
          left: 15.0, right: 15.0, top: 10.0, bottom: 0),
      //padding: EdgeInsets.symmetric(horizontal: 15),
      child:
      Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 5.0,top:10.0),
              child: Text(StringConstants.from,textAlign: TextAlign.left,style: TextStyle(color: ColorConstants.blackColor,fontWeight: FontWeight.bold))),
          Material(
            // elevation: 2.0,
            borderRadius: BorderRadius.circular(15.0),
            shadowColor: ColorConstants.whiteColor,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.whiteColor.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                autofocus: false,
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.arrow_drop_down),
                    border: InputBorder.none,
                    hintText: StringConstants.fromText,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 5.0,top:10.0),
              child: Text(StringConstants.to,textAlign: TextAlign.left,style: TextStyle(color: ColorConstants.blackColor,fontWeight: FontWeight.bold))),
          Material(
            // elevation: 2.0,
            borderRadius: BorderRadius.circular(15.0),
            shadowColor: ColorConstants.whiteColor,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.whiteColor.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                autofocus: false,
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    border: InputBorder.none,
                    hintText: StringConstants.toText,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 5.0,top:10.0),
              child: Text(StringConstants.airlines,textAlign: TextAlign.left,style: TextStyle(color: ColorConstants.blackColor,fontWeight: FontWeight.bold))),
          Material(
            // elevation: 2.0,
            borderRadius: BorderRadius.circular(15.0),
            shadowColor: ColorConstants.whiteColor,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.whiteColor.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                autofocus: false,
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    border: InputBorder.none,
                    hintText: StringConstants.airline,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 5.0,top:10.0),
              child: Text(StringConstants.depart,textAlign: TextAlign.left,style: TextStyle(color: ColorConstants.blackColor,fontWeight: FontWeight.bold))),
          Material(
            // elevation: 2.0,
            borderRadius: BorderRadius.circular(15.0),
            shadowColor: ColorConstants.whiteColor,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.whiteColor.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                autofocus: false,
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_month),
                    border: InputBorder.none,
                    hintText: StringConstants.dateFormat,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 5.0,top:10.0),
              child: Text(StringConstants.returnText,textAlign: TextAlign.left,style: TextStyle(color: ColorConstants.blackColor,fontWeight: FontWeight.bold))),
          Material(
            // elevation: 2.0,
            borderRadius: BorderRadius.circular(15.0),
            shadowColor: ColorConstants.whiteColor,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.whiteColor.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                autofocus: false,
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_month),
                    border: InputBorder.none,
                    hintText: StringConstants.dateFormat,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 5.0,top:10.0),
              child: Text(StringConstants.travelClass,textAlign: TextAlign.left,style: TextStyle(color: ColorConstants.blackColor,fontWeight: FontWeight.bold))),
          Material(
            // elevation: 2.0,
            borderRadius: BorderRadius.circular(15.0),
            shadowColor: ColorConstants.whiteColor,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.whiteColor.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                autofocus: false,
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    border: InputBorder.none,
                    hintText: StringConstants.fromText,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 5.0,top:10.0),
              child: Text(StringConstants.economy,textAlign: TextAlign.left,style: TextStyle(color: ColorConstants.blackColor,fontWeight: FontWeight.bold))),
           Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.whiteColor.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                        fillColor: Colors.white,
                      hintText: StringConstants.additionalInfo,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        // focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(25.0),
                        //   borderSide: BorderSide(
                        //     color: Colors.blue,
                        //   ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      )
                ),
          ),
          GestureDetector(
            onTap: () {},
              child: Container(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 100.0,
                  color: ColorConstants.blackColor,
                  margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      StringConstants.request,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        color: Colors.white,
                      ),
                    ),
                ),
            ),
              ),
          ),
        ],
      )
  ),
),
      ),
    );
  }
}