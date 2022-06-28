import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'model/infor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Infor infor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NSG Biolab") ,
      centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("My Upcoming Bookings"),
        ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
        // itemCount: infor.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Text(infor.title!,
              style: TextStyle(fontWeight:FontWeight.w900),),
              Text(infor.subTitile!,  style: TextStyle(fontWeight:FontWeight.w200),),
              Row(children: [
                Text(infor.releaseDay!,
                 style: TextStyle(fontWeight:FontWeight.w900),),
                Text(infor.nunber!,
                 style: TextStyle(fontWeight:FontWeight.w300),)
              ],)


            ],
          );
        },
      ),
        ],
      
      ),
    );
  }
}
import 'package:week2/app/model/color_info.dart';

class ChangeColorController {
  ColorInfoModel? colorSelected;

  changeColor(ColorInfoModel color) {
    colorSelected = color;
